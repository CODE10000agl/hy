class CreateOwnedDatasets < ActiveRecord::Migration
  def change
    create_table :owned_datasets do |t|
      t.integer :data_id
      t.string :title
      t.integer :id
      t.string :filetype
      t.string :path
      t.boolean :private
      t.string :access_key
      t.time :created_at
      t.time :updated_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
