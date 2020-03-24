defmodule OlafWeb.Controller.MovieController do
  use OlafWeb, :controller

  def index(conn, _params) do
    json(conn, %{hello: "world"})
  end
end
