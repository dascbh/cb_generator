class CreateMetadata < ActiveRecord::Migration
  def change
    create_table :metadata do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
