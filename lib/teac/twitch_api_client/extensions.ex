defmodule Teac.TwitchApiClient.Extensions do
  def get(opts) do
    token = Keyword.fetch!(opts, :token)
    client_id = Keyword.fetch!(opts, :client_id)

    case Req.get!("https://api.twitch.tv/helix/extensions",
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

  defmodule Chat do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/extensions/chat",
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

  defmodule Configurations do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/extensions/configurations",
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

    def put(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.put!("https://api.twitch.tv/helix/extensions/configurations",
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

  defmodule Live do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/extensions/live",
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

  defmodule Jwt.Secrets do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/extensions/jwt/secrets",
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

  defmodule PubSub do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/extensions/pubsub",
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

  defmodule Released do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/extensions/released",
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

  defmodule RequiredConfiguration do
    def put(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.put!("https://api.twitch.tv/helix/extensions/required_configuration",
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

  defmodule Transactions do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/extensions/transactions",
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
end
