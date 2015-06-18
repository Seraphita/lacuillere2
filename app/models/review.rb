class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, inclusion: {in: [0..5],allow_nil: false }
  validates :restaurant, presence: true
  validates :content, presence: true
end
