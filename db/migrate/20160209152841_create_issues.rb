class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
    	t.references :books
    	t.references :students
    	t.date :issue_date
    	t.date :return_date
      t.timestamps null: false
    end
  end
end
