defmodule Ecommerce.Orders.OrderItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "order_items" do
    belongs_to :order, Ecommerce.Orders.Order
    belongs_to :product, Ecommerce.Catalog.Product
    field :quantity, :integer

    timestamps()
  end

  def changeset(order_item, attrs) do
    order_item
    |> cast(attrs, [:order_id, :product_id, :quantity])
    |> validate_required([:order_id, :product_id, :quantity])
  end
end
