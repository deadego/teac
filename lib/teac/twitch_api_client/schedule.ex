defmodule Teac.TwitchApiClient.Schedule do
  def get() do
    # GET    https://api.twitch.tv/helix/schedule
  end

  def delete do
    # DELETE https://api.twitch.tv/helix/schedule/
  end

  defmodule ICalendar do
    def get() do
      # GET    https://api.twitch.tv/helix/schedule/icalendar
    end
  end

  defmodule Segment do
    def post() do
      # POST   https://api.twitch.tv/helix/schedule/segment
    end

    def patch() do
      # PATCH  https://api.twitch.tv/helix/schedule/segment
    end
  end

  defmodule Settings do
    def patch() do
      # PATCH https://api.twitch.tv/helix/schedule/settings
    end
  end
end
