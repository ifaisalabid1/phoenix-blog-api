# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MyBlog.Repo.insert!(%MyBlog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

posts = [
  %{title: "Post1", content: "Content1", image: "Image1", author_id: 1},
  %{title: "Post2", content: "Content2", image: "Image2", author_id: 1},
  %{title: "Post3", content: "Content3", image: "Image3", author_id: 1},
  %{title: "Post4", content: "Content4", image: "Image4", author_id: 1},
  %{title: "Post5", content: "Content5", image: "Image5", author_id: 1},
  %{title: "Post6", content: "Content6", image: "Image6", author_id: 2},
  %{title: "Post7", content: "Content7", image: "Image7", author_id: 2},
  %{title: "Post8", content: "Content8", image: "Image8", author_id: 2},
  %{title: "Post9", content: "Content9", image: "Image9", author_id: 2},
  %{title: "Post10", content: "Content10", image: "Image10", author_id: 2},
  %{title: "Post11", content: "Content11", image: "Image11", author_id: 3},
  %{title: "Post12", content: "Content12", image: "Image12", author_id: 3},
  %{title: "Post13", content: "Content13", image: "Image13", author_id: 3},
  %{title: "Post14", content: "Content14", image: "Image14", author_id: 3},
  %{title: "Post15", content: "Content15", image: "Image15", author_id: 3}
]

Enum.each(posts, fn post -> MyBlog.Blog.create_post(post) end)
