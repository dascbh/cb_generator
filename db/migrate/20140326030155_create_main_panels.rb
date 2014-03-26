class CreateMainPanels < ActiveRecord::Migration
  def change
    create_table :main_panels do |t|

      t.timestamps
    end
  end
end
