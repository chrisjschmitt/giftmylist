require 'test_helper'

class GiftExchangesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_exchanges)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_gift_exchange
    assert_difference('GiftExchange.count') do
      post :create, :gift_exchange => { }
    end

    assert_redirected_to gift_exchange_path(assigns(:gift_exchange))
  end

  def test_should_show_gift_exchange
    get :show, :id => gift_exchanges(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => gift_exchanges(:one).id
    assert_response :success
  end

  def test_should_update_gift_exchange
    put :update, :id => gift_exchanges(:one).id, :gift_exchange => { }
    assert_redirected_to gift_exchange_path(assigns(:gift_exchange))
  end

  def test_should_destroy_gift_exchange
    assert_difference('GiftExchange.count', -1) do
      delete :destroy, :id => gift_exchanges(:one).id
    end

    assert_redirected_to gift_exchanges_path
  end
end
