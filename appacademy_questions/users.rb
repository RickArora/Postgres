class User 
    attr_accessor :fname, :lname
    attr_reader :id

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end
end