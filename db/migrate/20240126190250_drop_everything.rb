class DropEverything < ActiveRecord::Migration[7.1]
  def up
    drop_table :projects
    drop_table :skills
    drop_table :projects_skills
    drop_table :positions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
