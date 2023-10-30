defmodule MinimalPhx.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
