class JoinTables < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :channels do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :channel, foreign_key: true, index: true
    end

    create_join_table :users, :projects do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :project, foreign_key: true, index: true
    end
  end
end
