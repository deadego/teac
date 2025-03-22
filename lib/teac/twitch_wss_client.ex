defmodule Teac.TwitchWssClient do
  use WebSockex
  require Logger

  @wss_endpoint "wss://eventsub.wss.twitch.tv/ws"

  def start_link(_) do
    # We need a client for authing and generating a jwt
    access_jwt = ""

    WebSockex.start_link(@wss_endpoint, __MODULE__, %{
      access_token: access_jwt
    })
  end

  def init(state) do
    Logger.info("Successfully authenticated and connected.")
    {:ok, state}
  end

  @impl true
  def handle_connect(_conn, state) do
    Logger.info("Successfully connected to .")
    {:ok, state}
  end

  @impl true
  def handle_frame({_type, msg}, state) do
    case JSON.decode(msg) do
      {:ok, data} ->
        data

      {:error, reason} ->
        Logger.error("Failed to decode JSON: #{inspect(reason)}")
    end

    {:ok, state}
  end
end
