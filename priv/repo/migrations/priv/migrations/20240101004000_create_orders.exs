defmodule Ecommerce.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :total_price, :decimal, precision: 10, scale: 2

      timestamps()
    end

    create index(:orders, [:user_id])
  end
end
