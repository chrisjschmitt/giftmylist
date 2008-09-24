#---
# Excerpted from "Rails Recipes"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
#---
class GiftItem < ActiveRecord::Base
  belongs_to :gift_list
  acts_as_list :scope => :gift_list
end
