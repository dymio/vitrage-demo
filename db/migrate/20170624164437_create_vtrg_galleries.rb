class CreateVtrgGalleries < ActiveRecord::Migration
  def change
    create_table :vtrg_galleries do |t|

      t.timestamps
    end
  end
end