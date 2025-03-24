defmodule Teac.TwitchApiClient.Hypetrain do
  def get(opts) do
    token = Keyword.fetch!(opts, :token)
    client_id = Keyword.fetch!(opts, :client_id)

    case Req.get!("https://api.twitch.tv/helix/hypetrain/events",
           headers: [
             {"Authorization", "Bearer #{token}"},
             {"Client-Id", client_id}
           ],
           params: []
         ) do
      %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
      %Req.Response{body: body} -> {:error, body}
    end
  end
end
