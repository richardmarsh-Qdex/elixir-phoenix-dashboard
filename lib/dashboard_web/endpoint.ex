defmodule DashboardWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :dashboard

  socket "/live", Phoenix.LiveView.Socket

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]
  plug Plug.Parsers, parsers: [:urlencoded, :multipart, :json]
  plug Plug.MethodOverride
  plug Plug.Head
  plug DashboardWeb.Router
end
