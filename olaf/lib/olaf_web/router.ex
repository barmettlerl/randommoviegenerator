defmodule OlafWeb.Router do
  use OlafWeb, :router

  alias Controller.MovieController

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", OlafWeb do
    pipe_through(:api)

    get("/movie", MovieController, :index)
  end
end
