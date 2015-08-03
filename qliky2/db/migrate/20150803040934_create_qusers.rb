class CreateQusers < ActiveRecord::Migration
  def change
    create_table :qusers do |t|
      t.string :displayname, default: "anonymous"
      t.string :encrypass, default: "***encrypted***"
      t.string :qmail, default: "abc123@gmail.c0m"
      t.boolean :qsubscriber, default: false
      t.boolean :qprivacy, default: false
      t.integer :qoid, default: 1

      t.timestamps null: false
    end
  end
end
