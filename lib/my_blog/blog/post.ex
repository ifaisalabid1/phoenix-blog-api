defmodule MyBlog.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :image, :string
    field :content, :string
    belongs_to :author, MyBlog.Authors.Author

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :image, :author_id])
    |> validate_required([:title, :content, :image, :author_id])
    |> unique_constraint(:title)
  end
end
