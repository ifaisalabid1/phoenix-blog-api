defmodule MyBlogWeb.PostJSON do
  alias MyBlog.Blog.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{data: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: data(post)}
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      title: post.title,
      content: post.content,
      image: post.image,
      author_id: post.author_id
    }
  end
end
