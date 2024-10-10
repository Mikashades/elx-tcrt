defmodule ElxTcrt.Repo do
  use Ecto.Repo,
    otp_app: :elx_tcrt,
    adapter: Ecto.Adapters.Postgres
end
