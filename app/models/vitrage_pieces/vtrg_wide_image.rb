module VitragePieces
  class VtrgWideImage < ActiveRecord::Base
    has_one :slot, class_name: "VitrageOwnersPiecesSlot", as: :piece

    mount_uploader :image, WideImageUploader

    validates :image, presence: true

    def params_for_permit
      [:image, :image_cache, :alt, :caption]
    end

  end
end
