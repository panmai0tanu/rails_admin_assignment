class AddReferencesProjectToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :project, foreign_key: true
  end
end
