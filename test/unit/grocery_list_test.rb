#---
# Excerpted from "Rails Recipes"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
#---
require File.dirname(__FILE__) + '/../test_helper'

class GroceryListTest < Test::Unit::TestCase
  fixtures :grocery_lists

  # Replace this with your real tests.
  def test_truth
    assert_kind_of GroceryList, grocery_lists(:first)
  end
end
