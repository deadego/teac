defmodule Teac.TwitchApiClient.Channels do
  def get() do
    # GET   https://api.twitch.tv/helix/channels
  end

  def patch() do
    # PATCH https://api.twitch.tv/helix/channels
  end

  defmodule Teac.TwitchApiClient.Channels.Ads do
    def get() do
      # GET   https://api.twitch.tv/helix/channels/ads
    end

    defmodule Teac.TwitchApiClient.Channels.Ads.Schedule.Snooze do
      def post() do
        # POST  https://api.twitch.tv/helix/channels/ads/schedule/snooze
      end
    end
  end

  defmodule Teac.TwitchApiClient.Channels.Commercial do
    def post() do
      # POST  https://api.twitch.tv/helix/channels/commercial
    end
  end

  defmodule Teac.TwitchApiClient.Channels.Editors do
    def get() do
      # GET   https://api.twitch.tv/helix/channels/editors
    end
  end

  defmodule Teac.TwitchApiClient.Channels.Followed do
    def get() do
      # GET   https://api.twitch.tv/helix/channels/followed
    end
  end

  defmodule Teac.TwitchApiClient.Channels.Followers do
    def get() do
      # GET   https://api.twitch.tv/helix/channels/followers
    end
  end

  defmodule Teac.TwitchApiClient.Channels.Vips do
    def get() do
      # GET   https://api.twitch.tv/helix/channels/vips
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/channels/vips
    end
  end
end
