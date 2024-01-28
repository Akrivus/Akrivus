class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.string :category
      t.string :title
      t.string :name
      t.string :location
      t.string :content
      t.cube :embedding
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end

    create_table :skills do |t|
      t.string :icon
      t.string :name
      t.string :content
      t.cube :embedding
      t.integer :proficiency
      t.datetime :started_at

      t.timestamps
    end

    create_join_table :experiences, :skills do |t|
      t.index [:experience_id, :skill_id]
      t.index [:skill_id, :experience_id]
    end
  end
end
