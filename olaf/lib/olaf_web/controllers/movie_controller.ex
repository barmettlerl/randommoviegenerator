defmodule OlafWeb.Controller.MovieController do
  use OlafWeb, :controller

  import Ecto.Query

  alias Olaf.{Movie, Repo}

  def index(conn, _params) do
    case(Repo.all(from m in Movie, select: %{m.id => m.title})) do
      movies ->
        conn
        |> json(movies)

      _ ->
        conn |> json(%{error: "happened"})
    end
  end

  def show(conn, _params) do
    json(conn, %{to: "do"})
  end

  def crete(conn, _params) do
    json(conn, %{to: "do"})
  end
end
