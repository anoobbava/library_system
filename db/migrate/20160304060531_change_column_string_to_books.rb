class ChangeColumnStringToBooks < ActiveRecord::Migration
  def change
  	rename_column :books, :string, :isbn
  end
end
