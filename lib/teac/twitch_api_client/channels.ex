defmodule Teac.TwitchApiClient.Channels do
  def get(opts) do
    token = Keyword.fetch!(opts, :token)
    client_id = Keyword.fetch!(opts, :client_id)

    case Req.get!("https://api.twitch.tv/helix/channels",
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

    case Req.patch!("https://api.twitch.tv/helix/channels",
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

  defmodule Teac.TwitchApiClient.Channels.Ads do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channels/ads",
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

    defmodule Teac.TwitchApiClient.Channels.Ads.Schedule.Snooze do
      def post(opts) do
        token = Keyword.fetch!(opts, :token)
        client_id = Keyword.fetch!(opts, :client_id)

        case Req.post!("https://api.twitch.tv/helix/channels/ads/schedule/snooze",
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

  defmodule Teac.TwitchApiClient.Channels.Commercial do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/channels/commercial",
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

  defmodule Teac.TwitchApiClient.Channels.Editors do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channels/editors",
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

  defmodule Teac.TwitchApiClient.Channels.Followed do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channels/followed",
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

  defmodule Teac.TwitchApiClient.Channels.Followers do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channels/followers",
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

  defmodule Teac.TwitchApiClient.Channels.Vips do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/channels/vips",
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

    def delete(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.delete!("https://api.twitch.tv/helix/channels/vips",
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
