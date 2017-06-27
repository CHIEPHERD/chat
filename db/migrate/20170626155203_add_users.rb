class AddUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
      t.string :id, limit: 36, primary_key: true

      t.string :firstname
      t.string :lastname
      t.string :avatar_url
    end
  end
end
