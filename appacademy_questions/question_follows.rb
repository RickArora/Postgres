class QuestionFollow
    attr_accessor :questions, :users
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @questions = options['questions']
        @users = options['users']

    end
end