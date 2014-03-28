class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :expected_name
      t.string :file_path

      t.timestamps
    end
  end
end
