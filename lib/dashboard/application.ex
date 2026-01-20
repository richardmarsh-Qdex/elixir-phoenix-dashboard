defmodule Dashboard.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Phoenix.PubSub, name: Dashboard.PubSub},
      {DashboardWeb.Endpoint, []}
    ]

    opts = [strategy: :one_for_one, name: Dashboard.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
