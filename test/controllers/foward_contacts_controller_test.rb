require 'test_helper'

class FowardContactsControllerTest < ActionController::TestCase
  setup do
    @foward_contact = foward_contacts(:one)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create foward_contact' do
    assert_difference('FowardContact.count') do
      post :create, foward_contact: { fields: @foward_contact.fields, to: @foward_contact.to }
    end

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal 'ok', result['status']
  end
  
  test 'should not create foward_contact with invalid fields' do
    assert_no_difference('FowardContact.count') do
      post :create, foward_contact: { fields: '', to: '', token: 'token' }
    end

    assert_template :new
  end

  test 'should deliver email' do
    skip 'implement mailer'
    token = @foward_contact.token

    post :foward, token: token
    assert_response :success
  end

  test 'should fail with invalid token' do
    post :foward, token: 'invalid'
    result = JSON.parse(response.body)
    assert_equal 'error', result['status']
  end
end
