class CreateVtrgTexts < ActiveRecord::Migration
  def change
    create_table :vtrg_texts do |t|
      t.text :body

      t.timestamps
    end
  end
end