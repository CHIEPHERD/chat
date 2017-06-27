class AddChannel < ActiveRecord::Migration[5.1]
  def change
    create_table :channels, id: false do |t|
      t.string :id, limit: 36, primary_key: true

      t.string :name
      t.text :description
      t.boolean :is_active

      t.datetime :created_at

      t.belongs_to :project, index: true, foreign_key: true
    end
  end
end
