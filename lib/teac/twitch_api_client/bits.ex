defmodule Teac.TwitchApiClient.Bits do
  defmodule Teac.TwitchApiClient.Bits.Leaderboard do
    def get() do
      # GET https://api.twitch.tv/helix/bits/leaderboard
    end
  end

  defmodule Teac.TwitchApiClient.Bits.Cheermotes do
    def get() do
      # GET https://api.twitch.tv/helix/bits/cheermotes
    end
  end

  defmodule Teac.TwitchApiClient.Bits.Extensions do
    def get() do
      # GET https://api.twitch.tv/helix/bits/extensions
    end

    def put() do
      # PUT https://api.twitch.tv/helix/bits/extensions
    end
  end
end
