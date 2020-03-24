defmodule Olaf.Repo do
  use Ecto.Repo,
    otp_app: :olaf,
    adapter: Ecto.Adapters.Postgres
end
