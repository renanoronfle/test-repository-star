class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :name, index: true
      t.integer :stargazers_count
      t.integer :remote_id, index: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
