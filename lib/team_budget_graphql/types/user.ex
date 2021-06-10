defmodule TeamBudgetGraphql.Types.User do
  @moduledoc false
  use Absinthe.Schema.Notation

  object :user do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :role, :string
  end

  input_object :user_input do
    field :first_name, non_null :string
    field :last_name, non_null :string
    field :email, non_null :string
    field :password_hash, non_null :string
    field :role, :string
  end
end
