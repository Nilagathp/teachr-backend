class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.integer :period
      t.integer :course_id

      t.timestamps
    end
  end
end
