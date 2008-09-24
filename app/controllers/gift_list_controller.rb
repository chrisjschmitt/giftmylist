class GiftListController < ApplicationController
    
  def show
    @person = User.find(session[:user_id])
#    @gift_list = @person.gift_lists.find(:first)
    @gift_exchange = @person.gift_exchange.find(:all)
  end                                            
 
  def edit
    # Stub for editing gift list items
  end
  
  def new
    @item = GiftItem.new
  end

  # fix name and gift list interface later
  def add_to_list
    @user_id = session[:user_id]
    @person = User.find(@user_id)
    @gift_list = @person.gift_lists.find(:first)
    @gift_item = @gift_list.gift_items.create(params[:item])
    if @gift_item.save
      flash[:notice] = 'Gift item was successfully created.'
      redirect_to :action => :show    #replace with partial
    else
      render :action => 'new'
    end
  end

  def sort
    
    @gift_list = GiftList.find(params[:id])
    @gift_list.gift_items.each do |gift_item|
      gift_item.position = params['gift-list'].index(gift_item.id.to_s) + 1
      gift_item.save
    end
    render :nothing => true
  end              

  def destroy_item
    item = GiftItem.find(params[:id]).destroy
    redirect_to :action => :show
  end
end
