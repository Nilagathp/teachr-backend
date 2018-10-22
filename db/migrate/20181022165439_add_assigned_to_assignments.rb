class AddAssignedToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :assigned, :boolean, default: false
  end
end
