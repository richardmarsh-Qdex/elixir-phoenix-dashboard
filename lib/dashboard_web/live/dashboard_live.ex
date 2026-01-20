defmodule DashboardWeb.DashboardLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, metrics: %{users: 1000, revenue: 50000, orders: 250})}
  end

  def render(assigns) do
    ~H"""
    <div>
      <h1>Real-time Dashboard</h1>
      <div>
        <h2>Users: <%= @metrics.users %></h2>
        <h2>Revenue: $<%= @metrics.revenue %></h2>
        <h2>Orders: <%= @metrics.orders %></h2>
      </div>
    </div>
    """
  end
end
