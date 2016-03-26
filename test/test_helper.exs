ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Leaves.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Leaves.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Leaves.Repo)

