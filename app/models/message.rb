class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :message, precence: true, unless: :image?
end
