class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.integer :gallery_id, null: false
      t.string  :image,      null: false
      t.string  :alt
      t.text    :caption
      t.integer :prior

      t.timestamps null: false
    end

    add_index :gallery_items, :gallery_id
  end
end
