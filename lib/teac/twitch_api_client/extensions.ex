defmodule Teac.TwitchApiClient.Extensions do
  def get() do
    # GET  https://api.twitch.tv/helix/extensions
  end

  defmodule Chat do
    def post() do
      # POST https://api.twitch.tv/helix/extensions/chat
    end
  end

  defmodule Configurations do
    def get() do
      # GET  https://api.twitch.tv/helix/extensions/configurations
    end

    def put() do
      # PUT  https://api.twitch.tv/helix/extensions/configurations
    end
  end

  defmodule Live do
    def get() do
      # GET  https://api.twitch.tv/helix/extensions/live
    end
  end

  defmodule Jwt.Secrets do
    def get() do
      # GET  https://api.twitch.tv/helix/extensions/jwt/secrets
    end
  end

  defmodule PubSub do
    def post() do
      # POST https://api.twitch.tv/helix/extensions/pubsub
    end
  end

  defmodule Released do
    def get() do
      # GET  https://api.twitch.tv/helix/extensions/released
    end
  end

  defmodule RequiredConfiguration do
    def put() do
      # PUT  https://api.twitch.tv/helix/extensions/required_configuration
    end
  end

  defmodule Transactions do
    def get() do
      # GET  https://api.twitch.tv/helix/extensions/transactions
    end
  end
end
