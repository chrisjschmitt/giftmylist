class ViewGiftListController < ApplicationController
  
  def show
    @person = User.find(params[:id])
    session[:giftee_id] = @person.id
    @gift_list = @person.gift_lists.find(:first)
    @wish_items = @gift_list.gift_items.find(:all, :conditions => ["gift_items.purchased=?", false])
    @purchased_items = @gift_list.gift_items.find(:all, :conditions => ["gift_items.purchased=?", true])
  end
  
  def purchased
    # mark items as purchased and move to below purchased header
    GiftItem.update_all(["purchased_at=?", Time.now], :id => params[:gift_items_id])
    GiftItem.update_all(["purchased=?", true], :id => params[:gift_items_id])
    redirect_to :action => :show, :id => session[:giftee_id]     # replace with partial
  end

end
