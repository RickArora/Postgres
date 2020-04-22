require_relative 'questions_database'

class Question 
    attr_accessor :title, :body, :author_id
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @title = options['title']
        @body = options['id']
        @author_id = options['author_id']
    end

    def self.find_by_id(id) 
        query = QuestionsDatabase.instance.execute(<<-SQL,id)
        SELECT
            * 
        FROM 
            questions
        WHERE
            id = ?
        SQL
        Question.new(query)
    end
end