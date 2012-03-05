class Project < ActiveRecord::Base
  belongs_to :client
  has_many :time_tracks
  default_scope :order  => "name ASC"

  def to_s
    name
  end
end
