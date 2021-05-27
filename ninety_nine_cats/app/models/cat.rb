class Cat < ApplicationRecord
  validates :color, inclusion: { in: %w(black white brown yellow red blue orange),
  message: "%{value} is not a valid color" }, presence: true
  validates :sex, inclusion: { in: %w(M F),
  message: "%{value} is not 'M' or 'F' " }, presence: true
end