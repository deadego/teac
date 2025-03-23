defmodule Teac.TwitchApiClient.Users do
  def get() do
    # GET https://api.twitch.tv/helix/users
  end

  def put() do
    # PUT https://api.twitch.tv/helix/users
  end

  defmodule Blocks do
    def get() do
      # GET https://api.twitch.tv/helix/users/blocks
    end

    def put() do
      # PUT https://api.twitch.tv/helix/users/blocks
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/users/blocks
    end
  end

  defmodule Extensions do
    def get() do
      # GET https://api.twitch.tv/helix/users/extensions
    end

    def put() do
      # PUT https://api.twitch.tv/helix/users/extensions
    end
  end

  defmodule Extensions.List do
    def get() do
      # GET https://api.twitch.tv/helix/users/extensions/list
    end
  end
end
