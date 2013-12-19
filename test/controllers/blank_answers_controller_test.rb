require 'test_helper'

class BlankAnswersControllerTest < ActionController::TestCase
  setup do
    @blank_answer = blank_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blank_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blank_answer" do
    assert_difference('BlankAnswer.count') do
      post :create, blank_answer: { answer: @blank_answer.answer }
    end

    assert_redirected_to blank_answer_path(assigns(:blank_answer))
  end

  test "should show blank_answer" do
    get :show, id: @blank_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blank_answer
    assert_response :success
  end

  test "should update blank_answer" do
    patch :update, id: @blank_answer, blank_answer: { answer: @blank_answer.answer }
    assert_redirected_to blank_answer_path(assigns(:blank_answer))
  end

  test "should destroy blank_answer" do
    assert_difference('BlankAnswer.count', -1) do
      delete :destroy, id: @blank_answer
    end

    assert_redirected_to blank_answers_path
  end
end
