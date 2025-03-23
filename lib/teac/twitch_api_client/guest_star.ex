defmodule Teac.TwitchApiClient.GuestStar do
  defmodule ChannelCettings do
    def get() do
      # GET    https://api.twitch.tv/helix/guest_star/channel_settings
    end

    def put() do
      # PUT    https://api.twitch.tv/helix/guest_star/channel_settings
    end
  end

  defmodule Invites do
    def get() do
      # GET    https://api.twitch.tv/helix/guest_star/invites
    end

    def post() do
      # POST   https://api.twitch.tv/helix/guest_star/invites
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/guest_star/invites
    end
  end

  defmodule Session do
    def get() do
      # GET    https://api.twitch.tv/helix/guest_star/session
    end

    def post() do
      # POST   https://api.twitch.tv/helix/guest_star/session
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/guest_star/session
    end
  end

  defmodule Slot do
    def post() do
      # POST   https://api.twitch.tv/helix/guest_star/slot
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/guest_star/slot
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/guest_star/slot
    end
  end

  defmodule SlotSettings do
    def patch() do
      # PATCH  https://api.twitch.tv/helix/guest_star/slot_settings
    end
  end
end
