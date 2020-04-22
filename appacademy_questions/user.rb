require_relative 'question_database'

class User 
    attr_accessor :fname, :lname
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end

    def self.find_by_id(id) 
        query = QuestionsDatabase.instance.execute(<<-SQL,id)
        SELECT
            * 
        FROM 
            users
        WHERE
            id = ?
        SQL
        User.new(query['id'])
    end
    
end