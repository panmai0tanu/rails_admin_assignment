class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
      t.string :user_id
      t.string :project_id

      t.timestamps
    end
  end
end
