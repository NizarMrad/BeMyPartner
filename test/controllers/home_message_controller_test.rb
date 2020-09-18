# frozen_string_literal: true

require 'test_helper'

class HomeMessageControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_message_index_url
    assert_response :success
  end
end
