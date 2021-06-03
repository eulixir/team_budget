alias TeamBudget.{Accounts.User, Repo}

%{first_name: "John", last_name: "Banana", email: "John@banana.com", password_hash: "123123"}
|> User.changeset()
|> Repo.insert()
