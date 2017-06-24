class GalleryItem < ActiveRecord::Base
  belongs_to :gallery, class_name: 'VitragePieces::VtrgGallery',
                       inverse_of: :items,
                       required: true

  mount_uploader :image, GalleryImageUploader

  validates :image, presence: true

  scope :ordered, -> { order(prior: :asc, id: :asc) }
end
