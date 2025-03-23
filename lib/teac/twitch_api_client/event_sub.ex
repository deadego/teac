defmodule Teac.TwitchApiClient.EventSub do
  defmodule Conduits do
    def get() do
      # GET    https://api.twitch.tv/helix/eventsub/conduits
    end

    def post() do
      # POST   https://api.twitch.tv/helix/eventsub/conduit
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/eventsub/conduits
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/eventsub/conduits
    end
  end

  defmodule Conduits.Shards do
    def get() do
      # GET    https://api.twitch.tv/helix/eventsub/conduits/shards
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/eventsub/conduits/shards
    end
  end

  defmodule Subscriptions do
    def get() do
      # GET    https://api.twitch.tv/helix/eventsub/subscriptions
    end

    def post() do
      # POST   https://api.twitch.tv/helix/eventsub/subscriptions
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/eventsub/subscriptions
    end
  end
end
