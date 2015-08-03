class CreateQviews < ActiveRecord::Migration
  def change
    create_table :qviews do |t|
      t.references :quser, index: true, foreign_key: true
      t.references :qdataset, index: true, foreign_key: true
      t.string  :qvtitle,   default: "new view"
      t.boolean :qvprivacy, default: true
      t.string  :qdpermkey, default: ""
      t.string  :dyscogenerator,
                default:
                "yet developed"

      t.timestamps null: false
    end
  end
end
