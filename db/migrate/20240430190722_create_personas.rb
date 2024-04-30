class CreatePersonas < ActiveRecord::Migration[7.1]
  def change
    create_table :personas do |t|
      t.string :model
      t.string :voice
      t.string :name
      t.string :personalPrompt
      t.string :guidancePrompt
      t.string :color
      t.string :avatarUrl

      t.timestamps
    end
  end
end
