class CreateVtrgWideImages < ActiveRecord::Migration
  def change
    create_table :vtrg_wide_images do |t|
      t.string :image
      t.string :alt
      t.text   :caption

      t.timestamps
    end
  end
end