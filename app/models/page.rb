class Page < ActiveRecord::Base
  acts_as_vitrage_owner

  before_create :make_guid_slug

  private

  # before_create
  def make_guid_slug
    self.slug = SecureRandom.uuid
  end
end
