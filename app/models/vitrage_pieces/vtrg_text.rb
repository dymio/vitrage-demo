module VitragePieces
  class VtrgText < ActiveRecord::Base
    has_one :slot, class_name: "VitrageOwnersPiecesSlot", as: :piece

    def params_for_permit
      [:body]
    end

  end
end
