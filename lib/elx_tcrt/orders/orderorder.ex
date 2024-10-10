defmodule Ecommerce.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    belongs_to :user, Ecommerce.Accounts.User
    has_many :order_items, Ecommerce.Orders.OrderItem
    field :total_price, :decimal

    timestamps()
  end

  def changeset(order, attrs) do
    order
    |> cast(attrs, [:user_id, :total_price])
    |> validate_required([:user_id, :total_price])
  end
end
