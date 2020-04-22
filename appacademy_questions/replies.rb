class Reply
    attr_accessor :parent_id, :body, :author_id, :subject_questions
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @parent_id = options['parent_id']
        @body = options['body']
        @author_id = options['author_id']
        @subject_questions = options['subject_questions']
    end
end