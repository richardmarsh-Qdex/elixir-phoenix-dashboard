defmodule DashboardWeb.Router do
  use Phoenix.Router
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", DashboardWeb do
    pipe_through :browser
    live "/", DashboardLive
  end
end
