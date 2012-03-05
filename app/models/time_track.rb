class TimeTrack < ActiveRecord::Base
  belongs_to :client
  belongs_to :project

  def elapsed_hours
    ((end_time - start_time) * 24).to_i
  end
  
  def elapsed_minutes
    (elapsed_hours * 60).to_i
  end
end
