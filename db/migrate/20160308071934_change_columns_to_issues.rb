class ChangeColumnsToIssues < ActiveRecord::Migration
  def change
  	rename_column :issues, :books_id, :book_id
  	rename_column :issues, :students_id, :student_id

  end
end
