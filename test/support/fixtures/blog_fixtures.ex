defmodule MyBlog.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyBlog.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        image: "some image",
        title: "some title"
      })
      |> MyBlog.Blog.create_post()

    post
  end
end
