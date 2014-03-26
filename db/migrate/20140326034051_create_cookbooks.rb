class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :name
      t.integer :node_id
      t.integer :role_id
      t.string :current_version
      t.text :description
      t.boolean :aix
      t.boolean :linux
      t.boolean :windows
      t.text :comments
      t.integer :metadata_id
      t.integer :template_id
      t.boolean :has_template
      t.boolean :released

      t.timestamps
    end
  end
end
