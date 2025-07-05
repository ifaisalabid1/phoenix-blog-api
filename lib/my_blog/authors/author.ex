defmodule MyBlog.Authors.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :name, :string
    field :bio, :string
    has_many :posts, MyBlog.Blog.Post

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [:name, :bio])
    |> validate_required([:name, :bio])
  end
end
