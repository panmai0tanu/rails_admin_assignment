class AddReferencesUserToUserProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_projects, :user, foreign_key: true
  end
end
