class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end
