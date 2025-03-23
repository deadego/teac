defmodule Teac.TwitchApiClient.Streams do
  def get() do
    # GET  https://api.twitch.tv/helix/streams
  end

  defmodule Followed do
    def get() do
      # GET  https://api.twitch.tv/helix/streams/followed
    end
  end

  defmodule Key do
    def get() do
      # GET  https://api.twitch.tv/helix/streams/key
    end
  end

  defmodule Markers do
    def get() do
      # GET  https://api.twitch.tv/helix/streams/markers
    end

    def post() do
      # POST https://api.twitch.tv/helix/streams/markers
    end
  end

  defmodule Tags do
    def get() do
      # GET  https://api.twitch.tv/helix/streams/tags
    end
  end
end
