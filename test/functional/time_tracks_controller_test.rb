require 'test_helper'

class TimeTracksControllerTest < ActionController::TestCase
  setup do
    @time_track = time_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_track" do
    assert_difference('TimeTrack.count') do
      post :create, time_track: @time_track.attributes
    end

    assert_redirected_to time_track_path(assigns(:time_track))
  end

  test "should show time_track" do
    get :show, id: @time_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_track
    assert_response :success
  end

  test "should update time_track" do
    put :update, id: @time_track, time_track: @time_track.attributes
    assert_redirected_to time_track_path(assigns(:time_track))
  end

  test "should destroy time_track" do
    assert_difference('TimeTrack.count', -1) do
      delete :destroy, id: @time_track
    end

    assert_redirected_to time_tracks_path
  end
end
