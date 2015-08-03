class CreateQdatasets < ActiveRecord::Migration
  def change
    create_table :qdatasets do |t|
      t.references :quser, index: true, foreign_key: true
      t.string  :qdtitle,   default: "default.csv"
      t.string  :qdtype,    default: "csv"
      t.boolean :qdprivacy, default: true
      t.string  :qdpermkey, default: ""
      t.string  :qpfd,      default: "yet developed"

      t.timestamps null: false
    end
  end
end
