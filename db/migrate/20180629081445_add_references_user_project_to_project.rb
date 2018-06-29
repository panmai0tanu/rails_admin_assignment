class AddReferencesUserProjectToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :user_project, foreign_key: true
  end
end
