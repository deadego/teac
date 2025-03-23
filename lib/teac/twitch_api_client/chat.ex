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
    def post() do
      # POST  https://api.twitch.tv/helix/chat/messages
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
