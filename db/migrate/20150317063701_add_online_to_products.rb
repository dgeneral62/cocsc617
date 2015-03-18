class AddOnlineToProducts < ActiveRecord::Migration
  def change
    add_column :products, :online, :string

  end
end
