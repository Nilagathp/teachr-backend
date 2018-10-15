class AddContentToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :directions, :text
    add_column :assignments, :content, :text
    add_column :assignments, :questions, :text, array:true, default: []
  end
end
