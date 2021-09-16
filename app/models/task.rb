class Task < ApplicationRecord
  validates :title, presence: true
  validates :content,
  length: { minimum: 2, maximum: 100 }
end
