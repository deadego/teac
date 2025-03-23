defmodule Teac.TwitchApiClient.Analytics do
  defmodule Teac.TwitchApiClient.Analytics.Extensions do
    def get() do
      # GET https://api.twitch.tv/helix/analytics/extensions
    end
  end

  defmodule Teac.TwitchApiClient.Analytics.Games do
    def get() do
      # GET https://api.twitch.tv/helix/analytics/games
    end
  end
end
