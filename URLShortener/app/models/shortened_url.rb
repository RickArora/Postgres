class ShortenedUrl < ApplicationRecord
    validates :short_url, uniqueness: true, presence: true
    validates :long_url, presence: true
    validates :user_id, presence: true
    belongs_to(
      :user,
      class_name: 'User',
      foreign_key: :user_id,
      primary_key: :id
    )
end