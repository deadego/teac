defmodule Teac.TwitchApiClient.Moderation do
  defmodule Automod.Settings do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/automod/settings
    end

    def put() do
      # PUT    https://api.twitch.tv/helix/moderation/automod/settings
    end
  end

  defmodule Bans do
    def post() do
      # POST   https://api.twitch.tv/helix/moderation/bans
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/moderation/bans
    end
  end

  defmodule Banned do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/banned
    end
  end

  defmodule BlockedTerms do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/blocked_terms
    end

    def post() do
      # POST   https://api.twitch.tv/helix/moderation/blocked_terms
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/moderation/blocked_terms
    end
  end

  defmodule Channels do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/channels
    end
  end

  defmodule Chat do
    def delete() do
      # DELETE https://api.twitch.tv/helix/moderation/chat
    end
  end

  defmodule Snforcements.Status do
    def post() do
      # POST   https://api.twitch.tv/helix/moderation/enforcements/status
    end
  end

  defmodule Moderators do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/moderators
    end

    def post() do
      # POST   https://api.twitch.tv/helix/moderation/moderators
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/moderation/moderators
    end
  end

  defmodule ShieldMode do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/shield_mode
    end

    def put do
      # PUT    https://api.twitch.tv/helix/moderation/shield_mode
    end
  end

  defmodule Warnings do
    def post() do
      # POST   https://api.twitch.tv/helix/moderation/warnings
    end
  end

  defmodule UnbanRequests do
    def get() do
      # GET    https://api.twitch.tv/helix/moderation/unban_requests
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/moderation/unban_requests
    end
  end
end
