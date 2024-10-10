defmodule Ecommerce.Cart.Cart do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do
    belongs_to :user, Ecommerce.Accounts.User
    has_many :cart_items, Ecommerce.Cart.CartItem

    timestamps()
  end

  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
  end
end
