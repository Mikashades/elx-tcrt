defmodule Ecommerce.Cart.CartItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cart_items" do
    belongs_to :cart, Ecommerce.Cart.Cart
    belongs_to :product, Ecommerce.Catalog.Product
    field :quantity, :integer

    timestamps()
  end

  def changeset(cart_item, attrs) do
    cart_item
    |> cast(attrs, [:cart_id, :product_id, :quantity])
    |> validate_required([:cart_id, :product_id, :quantity])
  end
end
