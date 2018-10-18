class AddContentJsonbToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :content, :jsonb
  end
end
