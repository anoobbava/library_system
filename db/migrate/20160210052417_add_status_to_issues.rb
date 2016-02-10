class AddStatusToIssues < ActiveRecord::Migration
  def change
  	add_column :issues, :status, :boolean, null: false
  end
end
