defmodule MyBlog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text
      add :image, :string
      add :author_id, references(:authors, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:posts, [:author_id])
  end
end
