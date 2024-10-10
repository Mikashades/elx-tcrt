defmodule Ecommerce.Orders do
  import Ecto.Query, warn: false
  alias Ecommerce.Repo
  alias Ecommerce.Orders.Order
  alias Ecommerce.Orders.OrderItem

  def list_orders do
    Repo.all(Order)
  end

  def get_order!(id), do: Repo.get!(Order, id)

  def create_order(attrs \\ %{}) do
    %Order{}
    |> Order.changeset(attrs)
    |> Repo.insert()
  end

  def update_order(%Order{} = order, attrs) do
    order
    |> Order.changeset(attrs)
    |> Repo.update()
  end

  def delete_order(%Order{} = order) do
    Repo.delete(order)
  end

  def change_order(%Order{} = order, attrs \\ %{}) do
    Order.changeset(order, attrs)
  end

  # Order Item İşlemleri

  def add_item_to_order(order_id, product_id, quantity) do
    %OrderItem{}
    |> OrderItem.changeset(%{order_id: order_id, product_id: product_id, quantity: quantity})
    |> Repo.insert()
  end

  def remove_item_from_order(order_item_id) do
    Repo.get!(OrderItem, order_item_id)
    |> Repo.delete()
  end
end
