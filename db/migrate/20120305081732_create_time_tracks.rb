class CreateTimeTracks < ActiveRecord::Migration
  def change
    create_table :time_tracks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :interrumptions, :decimal, :precision => 6, :scale => 2
      t.references :client
      t.references :project
      t.text :notes

      t.timestamps
    end
    add_index :time_tracks, :client_id
    add_index :time_tracks, :project_id
  end
end
