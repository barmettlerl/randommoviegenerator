defmodule OlafWeb.Router do
  use OlafWeb, :router

  alias Controller.MovieController

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", OlafWeb do
    pipe_through(:api)

    resources("/movie", MovieController, only: [:index, :show, :create])
  end
end
