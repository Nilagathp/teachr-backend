class DropSections < ActiveRecord::Migration[5.2]
  def change
    drop_table :sections
    drop_table :student_sections
  end
end
