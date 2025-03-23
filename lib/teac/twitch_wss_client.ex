defmodule Teac.TwitchWssClient do
  use WebSockex
  require Logger

  @wss_endpoint "wss://eventsub.wss.twitch.tv/ws?keepalive_timeout_seconds=30"

  def start_link(_) do
    # We need a client for authing and generating a jwt
    access_jwt = "yrjifaba441nrq32zdyy2avyouaiwg"

    WebSockex.start_link(
      @wss_endpoint,
      __MODULE__,
      %{
        access_token: access_jwt
      }
    )
  end

  # def init(state) do
  #   Logger.info("Successfully ~authenticated and connected.")
  #   dbg(state)

  #   {:ok, state}
  # end

  @impl true
  def handle_connect(_conn, state) do
    dbg(state)

    Logger.info("Successfully connected to twitch websocket")
    Logger.debug(state)
    {:ok, state}
  end

  @impl true
  def handle_frame({_type, msg} = data, state) do
    Logger.debug([data, state])

    case JSON.decode(msg) do
      {:ok, data} ->
        dbg(data)

      {:error, reason} ->
        Logger.error("Failed to decode JSON: #{inspect(reason)}")
    end

    {:ok, state}
  end
end
