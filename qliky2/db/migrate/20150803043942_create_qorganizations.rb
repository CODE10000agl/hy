class CreateQorganizations < ActiveRecord::Migration
  def change
    create_table :qorganizations do |t|
      t.references :quser, index: true, foreign_key: true
      t.string  :qotitle,      default: "An organization"
      t.boolean :qoprivacy,    default: true
      t.string  :qopermkey,    default: "yet developed"
      t.boolean :qosubscriber, default: false

      t.timestamps null: false
    end
  end
end
