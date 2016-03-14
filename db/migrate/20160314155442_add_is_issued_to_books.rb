class AddIsIssuedToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :is_issued, :boolean, default: false
  end
end
