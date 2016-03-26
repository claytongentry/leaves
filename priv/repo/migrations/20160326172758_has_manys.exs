defmodule Leaves.Repo.Migrations.HasManys do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :copies, references(:copies)
    end

    alter table(:books) do
      add :copies, references(:copies)
    end
  end
end
