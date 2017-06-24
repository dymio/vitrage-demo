module VitragePieces
  class VtrgGallery < ActiveRecord::Base
    has_one :slot, class_name: "VitrageOwnersPiecesSlot", as: :piece

    has_many :items, class_name: 'GalleryItem',
                     inverse_of: :gallery,
                     foreign_key: 'gallery_id',
                     dependent: :destroy

    accepts_nested_attributes_for :items, allow_destroy: true,
                                          reject_if: :all_blank

    validates_associated :items

    def params_for_permit
      [items_attributes: [
        :id, :title, :alt, :image, :image_cache, :prior, :_destroy ] ]
    end

  end
end
