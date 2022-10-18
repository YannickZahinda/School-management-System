class Student < ApplicationRecord
    has_many :courses, class_name: 'Student', foreign_key: 'student_id'

    validates :name, :age, :previous_school, presence: true
end
