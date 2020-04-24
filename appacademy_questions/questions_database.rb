require 'sqlite3'
require 'byebug'
require 'singleton'

class QuestionsDatabase < SQLite3::Database
    attr_accessor :database
    include Singleton
    @database = SQLite3::Database.new("import.db")

    def self.instance 
        if database == null 
                 @database = SQLite3::Database.new("import.db")
        end 
        @database
    end

    def self.open
        self.type_translation = true 
        self.results_as_hash = true
    end
end