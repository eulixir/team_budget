defmodule TeamBudget.Accounts do
  @moduledoc false

  alias TeamBudget.{Accounts.User, Repo}

  def list_users do
    Repo.all(User)
  end

  def create_user(user) do
    user
    |> User.changeset()
    |> Repo.insert()
  end
end
