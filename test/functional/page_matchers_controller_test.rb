require 'test_helper'

class PageMatchersControllerTest < ActionController::TestCase

  test "should create page_matcher" do
    PageMatcher.any_instance.expects(:save).returns(true)
    post :create, :page_matcher => { }
    assert_response :redirect
  end

  test "should handle failure to create page_matcher" do
    PageMatcher.any_instance.expects(:save).returns(false)
    post :create, :page_matcher => { }
    assert_template "new"
  end

  test "should destroy page_matcher" do
    PageMatcher.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => page_matchers(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy page_matcher" do
    PageMatcher.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => page_matchers(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for page_matcher" do
    get :edit, :id => page_matchers(:one).to_param
    assert_response :success
  end

  test "should get index for page_matchers" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_matchers)
  end

  test "should get new for page_matcher" do
    get :new
    assert_response :success
  end

  test "should get show for page_matcher" do
    get :show, :id => page_matchers(:one).to_param
    assert_response :success
  end

  test "should update page_matcher" do
    PageMatcher.any_instance.expects(:save).returns(true)
    put :update, :id => page_matchers(:one).to_param, :page_matcher => { }
    assert_response :redirect
  end

  test "should handle failure to update page_matcher" do
    PageMatcher.any_instance.expects(:save).returns(false)
    put :update, :id => page_matchers(:one).to_param, :page_matcher => { }
    assert_template "edit"
  end

end