class AddProject < ActiveRecord::Migration[5.1]
  def change
    create_table :projects, id: false do |t|
      t.string :id, limit: 36, primary_key: true

      t.string :name
    end
  end
end
