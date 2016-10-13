require 'test_helper'

class MediaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, {id: 2}
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should be able to create new album" do
   post_params = {medium: {maker: 'Bobby Socks', title: 'Why Not?', type: 'album', description: 'So tired'}}
    post :create, post_params
    assert_response :success
  end

  test "should be able to edit a book" do
    get :edit, {id:1}
    assert_response :success
  end

  test "should be able to update a book" do
    put :update, {id: 1}
    assert_response :success
  end

  test "should be able to destroy a movie" do
    assert_difference("Medium.count", -1) do
    delete :destroy, {id: media(:harold_and_maude).id} 
    assert_response :redirect
    end
  end

  # test "should get upvote" do
  #   post :upvote
  #   assert_response :success
  # end

  # test "should get downvote" do
  #   post :downvote
  #   assert_response :success
  # end

#custom methods

  test 'Find Medium Method Must Bring up Right Object' do
    post_params = {medium: {maker: 'Bobby Socks', title: 'Why Not?', type: 'album', description: 'So tired'}}
  end

  test 'Upvote Method Must Add Votes' do
    
  end

  test 'Downvote Method Must Destroy Votes' do
    
  end

end
