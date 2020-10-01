class Course < ApplicationRecord
  belongs_to :day
  belongs_to :dish
end
