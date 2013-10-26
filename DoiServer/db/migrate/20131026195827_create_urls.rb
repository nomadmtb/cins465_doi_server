class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.text :url
      t.integer :doi_id
      t.datetime :date

      t.timestamps
    end
  end
end
