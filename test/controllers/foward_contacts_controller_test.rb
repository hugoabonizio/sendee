require 'test_helper'

class FowardContactsControllerTest < ActionController::TestCase
  setup do
    @foward_contact = foward_contacts(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foward_contact" do
    assert_difference('FowardContact.count') do
      post :create, foward_contact: { fields: @foward_contact.fields, to: @foward_contact.to, token: @foward_contact.token }
    end

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal 'ok', result['status']
  end
end
