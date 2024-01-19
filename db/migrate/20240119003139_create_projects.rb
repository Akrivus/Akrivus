class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :content
      t.string :image_key
      t.string :icon
      t.string :color
      t.string :call_to_action
      t.string :call_to_action_url
      t.datetime :started_at
      t.datetime :ended_at
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
