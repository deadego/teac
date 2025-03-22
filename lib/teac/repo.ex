defmodule Teac.Repo do
  use Ecto.Repo,
    otp_app: :teac,
    adapter: Ecto.Adapters.Postgres
end
