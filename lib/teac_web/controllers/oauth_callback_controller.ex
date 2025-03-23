defmodule TeacWeb.OAuthCallbackController do
  use TeacWeb, :controller
  require Logger

  # alias TeacWeb.Accounts

  def new(conn, %{"provider" => "twitch", "code" => code, "state" => state}) do
    client = twitch_client(conn)

    # Get token
    client.exchange_code_for_token(code: code, state: state)
    |> dbg()

    # Get user inform

    # with {:ok, info} <- client.exchange_access_token(code: code, state: state),
    #      %{info: info, primary_email: primary, emails: emails, token: token} = info,
    #      {:ok, user} <- Accounts.register_twitch_user(primary, info, emails, token) do
    #   conn
    #   |> put_flash(:info, "Welcome #{user.email}")
    #   |> TeacWeb.UserAuth.log_in_user(user)
    # else
    #   {:error, %Ecto.Changeset{} = changeset} ->
    #     Logger.info("failed Twitch insert #{inspect(changeset.errors)}")

    #     conn
    #     |> put_flash(
    #       :error,
    #       "We were unable to fetch the necessary information from your GithHub account"
    #     )
    #     |> redirect(to: "/")

    #   {:error, reason} ->
    #     Logger.info("failed Twitch exchange #{inspect(reason)}")

    #     conn
    #     |> put_flash(:error, "We were unable to contact Twitch. Please try again later")
    #     |> redirect(to: "/")
    # end
  end

  def new(conn, %{"provider" => "twitch", "error" => "access_denied"}) do
    redirect(conn, to: "/")
  end

  def sign_out(conn, _) do
    TeacWeb.UserAuth.log_out_user(conn)
  end

  defp twitch_client(conn) do
    conn.assigns[:twitch_client] || Teac.TwitchOAuthClient
  end
end
