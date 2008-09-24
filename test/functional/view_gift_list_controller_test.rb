require File.dirname(__FILE__) + '/../test_helper'
require 'view_gift_list_controller'

# Re-raise errors caught by the controller.
class ViewGiftListController; def rescue_action(e) raise e end; end

class ViewGiftListControllerTest < Test::Unit::TestCase
  def setup
    @controller = ViewGiftListController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
