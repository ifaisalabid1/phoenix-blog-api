defmodule MyBlog.BlogTest do
  use MyBlog.DataCase

  alias MyBlog.Blog

  describe "posts" do
    alias MyBlog.Blog.Post

    import MyBlog.BlogFixtures

    @invalid_attrs %{title: nil, image: nil, content: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Blog.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Blog.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{title: "some title", image: "some image", content: "some content"}

      assert {:ok, %Post{} = post} = Blog.create_post(valid_attrs)
      assert post.title == "some title"
      assert post.image == "some image"
      assert post.content == "some content"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{title: "some updated title", image: "some updated image", content: "some updated content"}

      assert {:ok, %Post{} = post} = Blog.update_post(post, update_attrs)
      assert post.title == "some updated title"
      assert post.image == "some updated image"
      assert post.content == "some updated content"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_post(post, @invalid_attrs)
      assert post == Blog.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Blog.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Blog.change_post(post)
    end
  end
end
