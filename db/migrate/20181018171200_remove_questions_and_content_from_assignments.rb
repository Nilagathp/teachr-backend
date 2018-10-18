class RemoveQuestionsAndContentFromAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :questions, :text
    remove_column :assignments, :content, :text
  end
end
