class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :name
      t.string :content
      t.string :image_key
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
