require "test_helper"

class ScaffoldSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffold_sample = scaffold_samples(:one)
  end

  test "should get index" do
    get scaffold_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffold_sample_url
    assert_response :success
  end

  test "should create scaffold_sample" do
    assert_difference('ScaffoldSample.count') do
      post scaffold_samples_url, params: { scaffold_sample: { some_text: @scaffold_sample.some_text } }
    end

    assert_redirected_to scaffold_sample_url(ScaffoldSample.last)
  end

  test "should show scaffold_sample" do
    get scaffold_sample_url(@scaffold_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffold_sample_url(@scaffold_sample)
    assert_response :success
  end

  test "should update scaffold_sample" do
    patch scaffold_sample_url(@scaffold_sample), params: { scaffold_sample: { some_text: @scaffold_sample.some_text } }
    assert_redirected_to scaffold_sample_url(@scaffold_sample)
  end

  test "should destroy scaffold_sample" do
    assert_difference('ScaffoldSample.count', -1) do
      delete scaffold_sample_url(@scaffold_sample)
    end

    assert_redirected_to scaffold_samples_url
  end
end
