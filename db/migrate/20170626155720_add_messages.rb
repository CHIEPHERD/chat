class AddMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages, id: false do |t|
      t.string :id, limit: 36, primary_key: true

      t.text :body
      t.datetime :posted_at

      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :channel, index: true, foreign_key: true
    end
  end
end
