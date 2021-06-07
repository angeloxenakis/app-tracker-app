require "test_helper"

class AppRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_record = app_records(:one)
  end

  test "should get index" do
    get app_records_url, as: :json
    assert_response :success
  end

  test "should create app_record" do
    assert_difference('AppRecord.count') do
      post app_records_url, params: { app_record: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show app_record" do
    get app_record_url(@app_record), as: :json
    assert_response :success
  end

  test "should update app_record" do
    patch app_record_url(@app_record), params: { app_record: {  } }, as: :json
    assert_response 200
  end

  test "should destroy app_record" do
    assert_difference('AppRecord.count', -1) do
      delete app_record_url(@app_record), as: :json
    end

    assert_response 204
  end
end
