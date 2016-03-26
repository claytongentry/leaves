defmodule Leaves.Repo.Migrations.CreateOtherTables do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :image, :string
      add :pages, :integer

      timestamps
    end

    create table(:copies) do
      add :user_id, references(:users)
      add :book_id, references(:books)
      add :is_rented, :boolean
      add :price, :float

      timestamps
    end

    create table(:rentals) do
      add :book_id, references(:books)
      add :renter_id, references(:users)
      add :provider_id, references(:users)
      add :start_date, :string
      add :return_date, :string

      timestamps
    end
  end
end
