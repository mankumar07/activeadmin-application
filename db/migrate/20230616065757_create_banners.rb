class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :banners do |t|
      t.string :name
      t.boolean :is_active
      t.integer :sequence

      t.timestamps
    end
  end
end
