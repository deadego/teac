defmodule Teac.TwitchOAuthClient do
  def authorize_url() do
    state = random_string()

    "https://id.twitch.tv/oauth2/authorize?client_id=#{client_id()}&state=#{state}&response_type=token&redirect_uri=#{redirect_url()}"
  end

  def random_string do
    binary = <<
      System.system_time(:nanosecond)::64,
      :erlang.phash2({node(), self()})::16,
      :erlang.unique_integer()::16
    >>

    binary
    |> Base.url_encode64()
    |> String.replace(["/", "+"], "-")
  end

  defp client_id, do: Teac.config([:twitch, :client_id])
  defp redirect_url, do: Teac.config([:twitch, :redirect_url])
end
