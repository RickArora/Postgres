class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    belongs_to(
        :shortened_urls,
        class_name: 'ShortenedUrl',
        primary_key: id
    )
end