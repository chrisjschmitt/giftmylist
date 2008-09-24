#---
# Excerpted from "Rails Recipes"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
#---
class GiftList < ActiveRecord::Base
  has_many :gift_items, :order => :position
  belongs_to :user
end
