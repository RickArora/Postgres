require_relative 'question_database'

class QuestionFollow
    attr_accessor :questions, :users
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @questions = options['questions']
        @users = options['users']

    end

    def self.find_by_id(id) 
        query = QuestionsDatabase.instance.execute(<<-SQL,id)
        SELECT
            * 
        FROM 
            question_follows
        WHERE
            id = ?
        SQL
        QuestionFollow.new(query['id'])
    end
end