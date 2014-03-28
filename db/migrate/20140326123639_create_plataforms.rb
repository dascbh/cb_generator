class CreatePlataforms < ActiveRecord::Migration
  def change
    create_table :plataforms do |t|
      t.string :name

      t.timestamps
    end
  end
end
