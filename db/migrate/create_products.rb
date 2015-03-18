class CreateProducts < ActiveRecord::Migration
  def change
      create_table :products do |t|
        t.string :title
        t.text :description
        t.string :image_url
        t.decimal :unit, :price, precision: 8, scale: 2
        #t.decimal :locale, :unit, :price, precision: 2, separator: '.', raise: true #GF updates number_to_currency
        t.timestamps
      end
  end
end