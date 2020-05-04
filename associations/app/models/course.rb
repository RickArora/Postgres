# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    has_many(
        :enrollment,
        class_name: 'Enrollment',
        primary_key: :id,
        foreign_key: :course_id
    )

    has_many(
        :user,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :student_id
    )
end
