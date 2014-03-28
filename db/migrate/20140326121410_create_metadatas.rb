class CreateMetadatas < ActiveRecord::Migration
  def change
    create_table :metadatas do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
