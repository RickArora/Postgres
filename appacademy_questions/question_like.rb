require_relative 'question_database'
class QuestionLike
    attr_accessor :question_id, :user_id
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @user_id = options['user_id']
    end

    def self.find_by_id(id) 
        query = QuestionsDatabase.instance.execute(<<-SQL,id)
        SELECT
            * 
        FROM 
            question_likes
        WHERE
            id = ?
        SQL
        QuestionLike.new(query['id'])
    end
end