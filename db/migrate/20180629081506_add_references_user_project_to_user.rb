class AddReferencesUserProjectToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :user_project, foreign_key: true
  end
end
