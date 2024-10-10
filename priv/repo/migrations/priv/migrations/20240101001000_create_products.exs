defmodule Ecommerce.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :description, :text
      add :price, :decimal, precision: 10, scale: 2
      add :stock, :integer

      timestamps()
    end
  end
end
