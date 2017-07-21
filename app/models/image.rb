class Image < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  validates :image, presence: true
end
