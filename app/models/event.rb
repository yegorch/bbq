class Event < ApplicationRecord
  validates :title, presence: true, length: {maximim: 255}
  validates :adress, presence: true
  validates :datetime, presence: true
end
