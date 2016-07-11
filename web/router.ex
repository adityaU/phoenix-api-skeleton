defmodule RoutingWrapper.Router do
  use RoutingWrapper.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RoutingWrapper do
    pipe_through :api # Use api pipeline

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", RoutingWrapper do
  #   pipe_through :api
  # end
end
