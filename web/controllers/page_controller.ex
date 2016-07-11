defmodule RoutingWrapper.PageController do
  use RoutingWrapper.Web, :controller

  def index(conn, _params) do
    json conn, %{success: true}
  end
end
