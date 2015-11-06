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
          hunger INTEGER NOT NULL,
          horn_size INTEGER NOT NULL
          description TEXT NULL, 
        );')
    end

    def create_tacocorn(name, horn_size, hunger, description)
			@db.execute('
				INSERT INTO tacocorns (name, horn_size, hunger, description)
				VALUES(?, ?, ?, ?)
				', name, horn_size, hunger, description)
		end
  end

end