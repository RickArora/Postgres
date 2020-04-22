class Question 
    attr_accessor :title, :body, :author_id
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @title = options['title']
        @body = options['id']
        @author_id = options['author_id']
    end
end