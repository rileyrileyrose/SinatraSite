require "./lib/database"

db = TacoCorn::Database.new("taco_corns.db")
db.create_schema