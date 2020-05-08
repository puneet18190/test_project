class Play < ApplicationRecord
  belongs_to :image
  validates_presence_of :timer, :image_id
end
