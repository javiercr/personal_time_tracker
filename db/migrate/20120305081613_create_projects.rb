class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :client

      t.timestamps
    end
    add_index :projects, :client_id
  end
end
