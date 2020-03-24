defmodule OlafWeb.Router do
  use OlafWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", OlafWeb do
    pipe_through :api
  end
end
