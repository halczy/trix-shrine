class Post < ApplicationRecord
  # Validations
  validates :content, presence: true
end
