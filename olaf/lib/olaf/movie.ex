defmodule Olaf.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field(:title, :string)

    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title])
    |> validate_required([:title])
    |> validate_length(:title, min: 3)
  end
end