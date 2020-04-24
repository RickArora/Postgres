class Toy < ApplicationRecord
    def dog
        Dog.find(dogid)
    end

    belongs_to(:dog, {
        primary_key: :id, 
        foreign_key: :dogid,
        class_name: :Dog
    })
end