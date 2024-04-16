class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :slug
      t.string :name
      t.string :company
      t.string :version
      t.boolean :hidden

      t.timestamps
    end
  end
end
