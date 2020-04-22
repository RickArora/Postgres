class QuestionLike
    attr_accessor :question_id, :user_id
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @user_id = options['user_id']
    end
end