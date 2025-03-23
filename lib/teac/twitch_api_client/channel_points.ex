defmodule Teac.TwitchApiClient.ChannelPoints do
  defmodule Teac.TwitchApiClient.ChannelPoints.CustomRewards do
    def get() do
      # GET    https://api.twitch.tv/helix/channel_points/custom_rewards
    end

    def post() do
      # POST   https://api.twitch.tv/helix/channel_points/custom_rewards
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/channel_points/custom_rewards
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/channel_points/custom_rewards
    end
  end

  defmodule Teac.TwitchApiClient.ChannelPoints.Redemptions do
    def get() do
      # GET    https://api.twitch.tv/helix/channel_points/custom_rewards/redemptions
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/channel_points/custom_rewards/redemptions
    end
  end
end
