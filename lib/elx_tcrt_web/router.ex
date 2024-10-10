defmodule EcommerceWeb.Router do
  use EcommerceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", EcommerceWeb do
    pipe_through :browser

    get "/", PageController, :index

    resources "/products", ProductController
    resources "/orders", OrderController, only: [:show, :create]
  end
end
