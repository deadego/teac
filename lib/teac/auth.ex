defmodule Teac.Auth do
  def token(opts) do
    code = Keyword.fetch!(opts, :code)
    client_id = Keyword.fetch!(opts, :client_id)
    client_secret = Keyword.fetch!(opts, :client_secret)
    grant_type = "authorization_code"
    redirect_uri = "https://localhost:4000/oauth/callback/twitch"

    case Req.post!(auth_uri() <> "token",
           headers: [
             {"Client-Id", client_id},
             {"Content-Type", "application/x-www-form-urlencoded"}
           ],
           form: [
             code: code,
             client_id: client_id,
             client_secret: client_secret,
             grant_type: grant_type,
             redirect_uri: redirect_uri
           ],
           decode_body: :json
         ) do
      %Req.Response{status: 200, body: %{"data" => data}} -> {:ok, data}
      %Req.Response{body: body} -> {:error, body}
    end
  end

  def auth_uri do
    Application.get_env(:teac, :auth_uri)
  end
end
