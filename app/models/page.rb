class Page < ActiveRecord::Base
  before_create :make_guid_slug

  private

  # before_create
  def make_guid_slug
    self.slug = SecureRandom.uuid
  end
end
