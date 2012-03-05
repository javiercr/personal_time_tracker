class Client < ActiveRecord::Base
  has_many :time_tracks
  
  def to_s
    name
  end
end
