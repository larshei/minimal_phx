defmodule MinimalPhx.Repo do
  use Ecto.Repo,
    otp_app: :minimal_phx,
    adapter: Ecto.Adapters.Postgres
end
