class VitrageOwnersPiecesSlot < ActiveRecord::Base
  # stored fields: :owner_type, :owner_id, :piece_type, :piece_id, :ordn

  belongs_to :owner, polymorphic: true
  belongs_to :piece, polymorphic: true, dependent: :destroy

  before_create :set_correct_order_num

  default_scope -> { order(ordn: :asc, id: :asc) }

  # add pieces class names strings here (demodulized)
  PIECE_CLASSES_STRINGS = [ "VtrgText", "VtrgWideImage", "VtrgGallery" ]

  private

  # TODO wrap this becausetroubles with updating this code in the future
  def set_correct_order_num
    self.ordn = 1
    if owner
      max_ordn = owner.vitrage_slots.maximum(:ordn)
      self.ordn = max_ordn + 1 if max_ordn
    end
  end
end
