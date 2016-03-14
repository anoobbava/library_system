class RemoveCountFromBooks < ActiveRecord::Migration
  def change
  	remove_column :books, :count, :integer
  end
end
