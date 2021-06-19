require "test_helper"

class BatchFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batch_file = batch_files(:one)
  end

  test "should get index" do
    get batch_files_url
    assert_response :success
  end

  test "should get new" do
    get new_batch_file_url
    assert_response :success
  end

  test "should create batch_file" do
    assert_difference('BatchFile.count') do
      post batch_files_url, params: { batch_file: { name: @batch_file.name } }
    end

    assert_redirected_to batch_file_url(BatchFile.last)
  end

  test "should show batch_file" do
    get batch_file_url(@batch_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_batch_file_url(@batch_file)
    assert_response :success
  end

  test "should update batch_file" do
    patch batch_file_url(@batch_file), params: { batch_file: { name: @batch_file.name } }
    assert_redirected_to batch_file_url(@batch_file)
  end

  test "should destroy batch_file" do
    assert_difference('BatchFile.count', -1) do
      delete batch_file_url(@batch_file)
    end

    assert_redirected_to batch_files_url
  end
end
