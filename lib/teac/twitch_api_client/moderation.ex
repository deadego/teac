defmodule Teac.TwitchApiClient.Moderation do
  defmodule Automod.Settings do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/automod/settings",
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

      case Req.put!("https://api.twitch.tv/helix/moderation/automod/settings",
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

  defmodule Bans do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/moderation/bans",
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

      case Req.delete!("https://api.twitch.tv/helix/moderation/bans",
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

  defmodule Banned do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/banned",
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

  defmodule BlockedTerms do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/blocked_terms",
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

      case Req.post!("https://api.twitch.tv/helix/moderation/blocked_terms",
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

      case Req.delete!("https://api.twitch.tv/helix/moderation/blocked_terms",
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

  defmodule Channels do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/channels",
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

  defmodule Chat do
    def delete(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.delete!("https://api.twitch.tv/helix/moderation/chat",
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

  defmodule Snforcements.Status do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/moderation/enforcements/status",
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

  defmodule Moderators do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/moderators",
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

      case Req.post!("https://api.twitch.tv/helix/moderation/moderators",
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

      case Req.delete!("https://api.twitch.tv/helix/moderation/moderators",
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

  defmodule ShieldMode do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/shield_mode",
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

      case Req.put!("https://api.twitch.tv/helix/moderation/shield_mode",
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

  defmodule Warnings do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.post!("https://api.twitch.tv/helix/moderation/warnings",
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

  defmodule UnbanRequests do
    def get(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)

      case Req.get!("https://api.twitch.tv/helix/moderation/unban_requests",
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

      case Req.patch!("https://api.twitch.tv/helix/moderation/unban_requests",
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
