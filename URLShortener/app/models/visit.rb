class Visit < ApplicationRecord
    validates :user_id, presence: true
    validates :url_id, presence: true 
    validates :short_url, presence: true
    validates :visit_count, presence: true
end