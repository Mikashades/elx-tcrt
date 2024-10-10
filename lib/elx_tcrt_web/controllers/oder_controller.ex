defmodule EcommerceWeb.OrderController do
  use EcommerceWeb, :controller
  alias Ecommerce.Orders

  def create(conn, %{"order" => order_params}) do
    case Orders.create_order(order_params) do
      {:ok, order} ->
        conn
        |> put_flash(:info, "Order placed successfully.")
        |> redirect(to: Routes.order_path(conn, :show, order))

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    order = Orders.get_order!(id)
    render(conn, "show.html", order: order)
  end
end