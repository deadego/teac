defmodule Teac.TwitchAuthScopes do
  @moduledoc """
  Twitch OAuth scopes
  """

  @doc """
  Get scope string by atom key. Example:

      TwitchAuth.Scopes.get(:user_read_email)
      iex> "user:read:email"
  """
  def get(key), do: Map.fetch!(all(), key)

  @doc "Get all scopes"
  def all do
    %{}
    |> Map.merge(Teac.TwitchAuthScopes.Analytics.all())
    |> Map.merge(Teac.TwitchAuthScopes.Bits.all())
    |> Map.merge(Teac.TwitchAuthScopes.Channel.all())
    |> Map.merge(Teac.TwitchAuthScopes.Clips.all())
    |> Map.merge(Teac.TwitchAuthScopes.Moderation.all())
    |> Map.merge(Teac.TwitchAuthScopes.User.all())
  end

  @doc "Get all scope values"
  def all_values, do: all() |> Map.values()

  @doc "Get all scope atoms"
  def all_keys, do: Map.keys(all())
end
