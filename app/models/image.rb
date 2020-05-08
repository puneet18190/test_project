class Image < ApplicationRecord
  has_one_attached :link
  has_many :plays, dependent: :destroy

  def image_link
    Rails.application.routes.url_helpers.rails_representation_url(link.variant(resize: "100x100").processed, only_path: true)
  end
end
