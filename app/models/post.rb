class Post < ApplicationRecord
  belongs_to :category 

  default_scope -> {where(status: true)}
  # scope :published, -> { where(status: true) }

  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :code, numericality: { only_integer: true, greater_than: 10, less_than: 100 }
end
