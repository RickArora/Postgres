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

    def self.find_by_id(id) 
        query = QuestionsDatabase.instance.execute(<<-SQL,id)
        SELECT
            * 
        FROM 
            replies
        WHERE
            id = ?
        SQL
        Reply.new(query['id'])
    end
end