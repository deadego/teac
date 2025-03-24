defmodule TeacWeb.TwitchLive do
  use TeacWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>
      <h2>Signed In As</h2>
      <img src={@current_user.avatar_url} class="w-28 h-28" /> Hello {@current_user.name}
    </div>
    <hr class="my-10" />
    <div>
      <h3 class="mb-4">WebSocket</h3>
      <.button :if={!@twitch_socket_connected} phx-click="start_socket">Start Socket</.button>
      <div :if={@twitch_socket_connected}>Socket Connected</div>
      <div :if={@twitch_socket_welcome}>
        Welcome Messaged Recived & EventSub.Subscription created for `channel.chat.message' <br />
        Now waiting for events:
        <div class="mt-8">
          <h4 class="mb-2">Messages:</h4>
          <p :for={
            %{
              "event" => %{
                "chatter_user_name" => chatter_user_name,
                "color" => color,
                "message" => msg
              }
            } <-
              @twitch_chat_msgs
          }>
            <span class="font-bold" style={"color: #{color};"}>{chatter_user_name}</span>: {msg[
              "text"
            ]}
          </p>
        </div>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(twitch_socket_connected: false, twitch_socket_welcome: false, twitch_chat_msgs: [])}
  end

  def handle_event("start_socket", _params, %{assigns: %{current_user: current_user}} = socket) do
    ident = current_user.identities |> List.first()
    start_twitch_socket(ident.provider_token, self())
    {:noreply, socket}
  end

  def handle_info({:twitch_event, data}, socket) do
    {:noreply, assign(socket, twitch_data: data)}
  end

  def handle_info({:twitch_socket_connected, :ok}, socket) do
    {:noreply, assign(socket, twitch_socket_connected: true)}
  end

  def handle_info({:twitch_welcome, :ok}, socket) do
    {:noreply, assign(socket, twitch_socket_welcome: true)}
  end

  def handle_info(
        {:twitch_chat_msg, msg},
        %{assigns: %{twitch_chat_msgs: twitch_chat_msgs, current_user: current_user}} = socket
      ) do
    case msg do
      %{
        "event" => %{
          "message" => %{
            "fragments" => [%{"emote" => %{"emote_set_id" => emote_set_id, "id" => emote_id}}]
          }
        }
      } ->
        %{provider_token: provider_token} = current_user.identities |> List.first()

        {:ok, return} =
          Teac.TwitchApiClient.Chat.Emotes.Set.get(
            token: provider_token,
            client_id: Teac.config([:twitch, :client_id]),
            emote_set_id: emote_set_id
          )

        Enum.find(return, fn %{"id" => id} -> id == emote_id end)
        |> dbg()

      _ ->
        nil
    end

    {:noreply, assign(socket, twitch_chat_msgs: twitch_chat_msgs ++ [msg])}
  end

  def start_twitch_socket(access_token, liveview_pid) do
    DynamicSupervisor.start_child(
      Teac.TwitchWssClientSupervisor,
      {Teac.TwitchWssClient, %{access_token: access_token, liveview_pid: liveview_pid}}
    )
  end
end
