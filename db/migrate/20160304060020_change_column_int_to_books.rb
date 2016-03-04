class ChangeColumnIntToBooks < ActiveRecord::Migration
  def change
  	rename_column :books, :int, :price
  end
end
