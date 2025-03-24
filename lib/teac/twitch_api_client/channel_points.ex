defmodule Teac.TwitchApiClient.ChannelPoints do
  defmodule Teac.TwitchApiClient.ChannelPoints.CustomRewards do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channel_points/custom_rewards",
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

    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/channel_points/custom_rewards",
             headers: [
               {"Authorization", "Bearer #{token}"},
               {"Client-Id", client_id},
               {"Content-Type", "application/x-www-form-urlencoded"}
             ],
             form: [],
             decode_body: :json
           ) do
        %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
        %Req.Response{body: body} -> {:error, body}
      end
    end

    def patch(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.patch!("https://api.twitch.tv/helix/channel_points/custom_rewards",
             headers: [
               {"Authorization", "Bearer #{token}"},
               {"Client-Id", client_id},
               {"Content-Type", "application/x-www-form-urlencoded"}
             ],
             form: [],
             decode_body: :json
           ) do
        %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
        %Req.Response{body: body} -> {:error, body}
      end
    end

    def delete(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.delete!("https://api.twitch.tv/helix/channel_points/custom_rewards",
             headers: [
               {"Authorization", "Bearer #{token}"},
               {"Client-Id", client_id},
               {"Content-Type", "application/x-www-form-urlencoded"}
             ],
             form: [],
             decode_body: :json
           ) do
        %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
        %Req.Response{body: body} -> {:error, body}
      end
    end
  end

  defmodule Teac.TwitchApiClient.ChannelPoints.Redemptions do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channel_points/custom_rewards/redemptions",
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

    def patch(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.patch!("https://api.twitch.tv/helix/channel_points/custom_rewards/redemptions",
             headers: [
               {"Authorization", "Bearer #{token}"},
               {"Client-Id", client_id},
               {"Content-Type", "application/x-www-form-urlencoded"}
             ],
             form: [],
             decode_body: :json
           ) do
        %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
        %Req.Response{body: body} -> {:error, body}
      end
    end
  end
end
