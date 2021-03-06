class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :anonymous_gossiper
      t.string :title
      t.text :content
      t.references :user, foreign_key: true, index: true
      t.datetime :date
      t.timestamps
    end
  end
end
