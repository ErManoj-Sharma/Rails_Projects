# frozen_string_literal:true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_url
    assert_response :success
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
  end

  test 'should get contact' do
    get static_pages_contact_url
    assert_response :success
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
  end
  test 'should get user dashbord' do
    get static_pages_dashbord_users_path
    assert_response :success
  end
end
