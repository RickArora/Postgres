require 'securerandom'

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

    def self.random_code
      new_url = SecureRandom.urlsafe_base64
      while (ShortenedUrl.exists?(:short_url => new_url))
        new_url = SecureRandom.urlsafe_base64
      end 
      new_url
    end

    def self.create(user, long_url)
      new_short_url = ShortenedUrl.new()
      new_short_url.short_url = random_code
      new_short_url.long_url = long_url
      new_short_url.user_id = user.id
      new_short_url.save!
    end
end
