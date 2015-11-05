require "./lib/database.rb"

db = TacoCorn::Database.new("taco_corns.db")
db.create_schema