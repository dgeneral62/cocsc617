class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :locale, :price, precision: 2, separator: '.', unit: "$", raise: true
      t.timestamps null: false
    end
  end
end
