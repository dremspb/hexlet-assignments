require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletin1 = bulletins(:bulletin1)
    @bulletin2 = bulletins(:bulletin2)
  end

  test 'should get index' do
    get bulletins_url
    assert_response :success
    assert_select 'h1', 'Bulletins'
    assert_select 'li', count: 4
  end

  test 'should show bulletin' do
    get bulletin_url(@bulletin1)
    assert_response :success
    assert_select 'h1', @bulletin1.title
    assert_select 'p', @bulletin1.body
  end
end
