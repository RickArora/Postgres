class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    has_many(
        :shortened_urls,
        class_name: 'ShortenedUrl',
        primary_key: :id
    )

    def submitted_urls
        ShortenedUrl.where("user_id = ?", :id)
    end
end