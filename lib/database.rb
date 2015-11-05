require "sqlite3"

module TacoCorn
  class Database

    def initialize(db_name)
      @db = SQLite3::Database.new(db_name)
    end

    def create_schema
      @db.execute('
        CREATE TABLE tacocorns (
          id INTEGER PRIMARY KEY,
          name TEXT NOT NULL,
          description TEXT NULL, 
          hunger INTEGER NOT NULL,
          horn_size INTEGER NOT NULL
        );')
    end
  end

end