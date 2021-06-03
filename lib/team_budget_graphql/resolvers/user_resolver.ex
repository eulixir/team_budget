defmodule TeamBudgetGraphql.Resolvers.UserResolver do
  @moduledoc false

  alias TeamBudget.Accounts

  def list_users(_parent, _params, _resolutions) do
    {:ok, Accounts.list_users()}
  end

  def create_user(_parent, %{user: user}, _resolutions) do
    Accounts.create_user(user)
  end
end
