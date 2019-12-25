class Music < ApplicationRecord
  belongs_to :user
  # mount_uploader :mp3 , Mp3Uploader
  # validates :mp3, presence: true
  # validates :name, presence: true
end

