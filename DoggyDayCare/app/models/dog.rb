# == Schema Information
#
# Table name: dogs
#
#  id   :bigint           not null, primary key
#  name :string           not null
#

class Dog < ApplicationRecord
    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "is to short must be longer then 4 of more chars"
        end
    end

    # def toys
    #     Toy.where({dog_id: self.id})
    # end
    has_many(:toys, {
        primary_key: :id, #dog's id
        foreign_key: :dogid,
        class_name: :Toy
    })
end
