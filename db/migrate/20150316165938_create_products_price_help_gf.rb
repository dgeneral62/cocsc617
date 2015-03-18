class CreateProductsPriceHelpGf < ActiveRecord::Migration
  def change
    change_column :products, :price, :decimal, precision: 2, unit: "$", separator:'.', raise: true
       #GF updates number_to_currency
  end
end

