#---
# Excerpted from "Rails Recipes"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
#---
require File.dirname(__FILE__) + '/../test_helper'
require 'grocery_list_controller'

# Re-raise errors caught by the controller.
class GroceryListController; def rescue_action(e) raise e end; end

class GroceryListControllerTest < Test::Unit::TestCase
  def setup
    @controller = GroceryListController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
