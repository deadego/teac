defmodule Teac.TwitchOAuthClient do
  @moduledoc """
  Twitch OAuth client using Req for HTTP requests.
  """

  @default_headers [{"Content-Type", "application/x-www-form-urlencoded"}]

  def authorize_url(client_id, state, response_type, redirect_uri, scopes) do
    query_params = [
      client_id: client_id,
      state: state,
      response_type: response_type,
      redirect_uri: redirect_uri,
      scope: scopes
    ]

    "https://id.twitch.tv/oauth2/authorize?" <> URI.encode_query(query_params)
  end

  def get_token(code) do
    Req.post(
      url: "https://id.twitch.tv/oauth2/token",
      form: [
        client_id: client_id(),
        client_secret: client_secret(),
        code: code,
        grant_type: "authorization_code",
        redirect_uri: redirect_uri()
      ],
      headers: @default_headers,
      receive_timeout: 15_000,
      decode_body: :json
    )
    |> handle_token_response()
  end

  defp handle_token_response({:ok, %{status: 200, body: body}}), do: {:ok, body}

  defp handle_token_response({:ok, %{status: status, body: body}}),
    do: {:error, {:http_error, status, body}}

  defp handle_token_response({:error, reason}), do: {:error, reason}

  defp client_id, do: Teac.config([:twitch, :client_id])
  defp client_secret, do: Teac.config([:twitch, :client_secret])
  defp redirect_uri, do: Teac.config([:twitch, :redirect_uri])

  def random_string do
    :crypto.strong_rand_bytes(32)
    |> Base.url_encode64()
    |> String.replace(~r/[\+\/]/, "-")
    |> String.replace(~r/=+$/, "")
  end
end
