class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :products, :string, :string
  end
end
