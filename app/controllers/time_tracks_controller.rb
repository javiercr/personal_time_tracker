class TimeTracksController < ApplicationController
  # GET /time_tracks
  # GET /time_tracks.json
  def index
    @time_tracks = TimeTrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_tracks }
    end
  end

  # GET /time_tracks/1
  # GET /time_tracks/1.json
  def show
    @time_track = TimeTrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_track }
    end
  end

  # GET /time_tracks/new
  # GET /time_tracks/new.json
  def new
    @time_track = TimeTrack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_track }
    end
  end

  # GET /time_tracks/1/edit
  def edit
    @time_track = TimeTrack.find(params[:id])
  end

  # POST /time_tracks
  # POST /time_tracks.json
  def create
    @time_track = TimeTrack.new(params[:time_track])

    respond_to do |format|
      if @time_track.save
        format.html { redirect_to @time_track, notice: 'Time track was successfully created.' }
        format.json { render json: @time_track, status: :created, location: @time_track }
      else
        format.html { render action: "new" }
        format.json { render json: @time_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_tracks/1
  # PUT /time_tracks/1.json
  def update
    @time_track = TimeTrack.find(params[:id])

    respond_to do |format|
      if @time_track.update_attributes(params[:time_track])
        format.html { redirect_to @time_track, notice: 'Time track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_tracks/1
  # DELETE /time_tracks/1.json
  def destroy
    @time_track = TimeTrack.find(params[:id])
    @time_track.destroy

    respond_to do |format|
      format.html { redirect_to time_tracks_url }
      format.json { head :no_content }
    end
  end
end
