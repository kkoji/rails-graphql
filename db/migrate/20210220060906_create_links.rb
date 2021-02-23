class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.references :user, foreign_key: true
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
