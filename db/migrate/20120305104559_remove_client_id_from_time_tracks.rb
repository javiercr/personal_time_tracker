class RemoveClientIdFromTimeTracks < ActiveRecord::Migration
  def change
    remove_column :time_tracks, :client_id
  end

end
