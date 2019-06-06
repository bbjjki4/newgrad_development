# frozen_string_literal: true
require 'test_helper'

class AdControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get ad_index_url
    assert_response :success
  end

  test 'should get show' do
    get ad_show_url
    assert_response :success
  end

  test 'should get edit' do
    get ad_edit_url
    assert_response :success
  end

  test 'should get new' do
    get ad_new_url
    assert_response :success
  end

  test 'should get create' do
    get ad_create_url
    assert_response :success
  end

  test 'should get edit' do
    get ad_edit_url
    assert_response :success
  end

  test 'should get destroy' do
    get ad_destroy_url
    assert_response :success
  end

end
