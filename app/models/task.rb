class Task < ApplicationRecord
  validates :name, :duration, presence: true
  belongs_to :group

  mount_uploader :image, ImageUploader
end
