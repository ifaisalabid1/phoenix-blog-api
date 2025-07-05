defmodule MyBlog.AuthorsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyBlog.Authors` context.
  """

  @doc """
  Generate a author.
  """
  def author_fixture(attrs \\ %{}) do
    {:ok, author} =
      attrs
      |> Enum.into(%{
        bio: "some bio",
        name: "some name"
      })
      |> MyBlog.Authors.create_author()

    author
  end
end
