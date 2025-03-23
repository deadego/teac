defmodule Teac.TwitchApiClient.Chat do
  defmodule Announcements do
    def post() do
      # POST  https://api.twitch.tv/helix/chat/announcements
    end
  end

  defmodule Badges do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/badges
    end
  end

  defmodule Badges.Global do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/badges/global
    end
  end

  defmodule Chatters do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/chatters
    end
  end

  defmodule Color do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/color
    end

    def put() do
      # PUT   https://api.twitch.tv/helix/chat/color
    end
  end

  defmodule Emotes do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/emotes
    end
  end

  defmodule Emotes.Global do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/emotes/global
    end
  end

  defmodule Emotes.Set do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/emotes/set
    end
  end

  defmodule Emotes.User do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/emotes/user
    end
  end

  defmodule Messages do
    def post(opts) do
      token = Keyword.fetch!(opts, :token)
      client_id = Keyword.fetch!(opts, :client_id)
      message = Keyword.fetch!(opts, :message)
      broadcaster_id = Keyword.fetch!(opts, :broadcaster_id)
      sender_id = Keyword.fetch!(opts, :sender_id)
      reply_parent_message_id = Keyword.get(opts, :reply_parent_message_id)

      case Req.post!("https://api.twitch.tv/helix/chat/messages",
             headers: [
               {"Authorization", "Bearer #{token}"},
               {"Client-Id", client_id},
               {"Content-Type", "application/x-www-form-urlencoded"}
             ],
             form: [
               message: message,
               broadcaster_id: broadcaster_id,
               sender_id: sender_id,
               reply_parent_message_id: reply_parent_message_id
             ],
             decode_body: :json
           ) do
        %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
        %Req.Response{body: body} -> {:error, body}
      end
    end
  end

  defmodule Settings do
    def get() do
      # GET   https://api.twitch.tv/helix/chat/settings
    end

    def patch() do
      # PATCH https://api.twitch.tv/helix/chat/settings
    end
  end

  defmodule Shoutouts do
    def post() do
      # POST  https://api.twitch.tv/helix/chat/shoutouts
    end
  end
end
