defmodule Ecommerce.Cart do
  import Ecto.Query, warn: false
  alias Ecommerce.Repo
  alias Ecommerce.Cart.Cart
  alias Ecommerce.Cart.CartItem

  def list_carts do
    Repo.all(Cart)
  end

  def get_cart!(id), do: Repo.get!(Cart, id)

  def create_cart(attrs \\ %{}) do
    %Cart{}
    |> Cart.changeset(attrs)
    |> Repo.insert()
  end

  def update_cart(%Cart{} = cart, attrs) do
    cart
    |> Cart.changeset(attrs)
    |> Repo.update()
  end

  def delete_cart(%Cart{} = cart) do
    Repo.delete(cart)
  end

  def change_cart(%Cart{} = cart, attrs \\ %{}) do
    Cart.changeset(cart, attrs)
  end

  # Cart Item İşlemleri

  def add_item_to_cart(cart_id, product_id, quantity) do
    %CartItem{}
    |> CartItem.changeset(%{cart_id: cart_id, product_id: product_id, quantity: quantity})
    |> Repo.insert()
  end

  def remove_item_from_cart(cart_item_id) do
    Repo.get!(CartItem, cart_item_id)
    |> Repo.delete()
  end
end
