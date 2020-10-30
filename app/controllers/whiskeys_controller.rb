class WhiskeysController < ApplicationController
  def index
  	@whiskeys = Whiskey.all
  end

  def show
  	@whiskey = Whiskey.find(params[:id])
  end

  def edit
  end

  def new
  	@whiskey = Whiskey.new
  end

  def create
  	@whiskey = Whiskey.new(whiskey_params)
  	if @whiskey.save
  		redirect_to whiskey_path(whiskey_params)
  	else 
  		flash[:danger] = '登録出来ませんでした。空欄の箇所はありませんか？'	
  		render "whiskeys/new"
  	end	

  end	

  def update
  end
  
  def destroy
  end	

  private
  def whiskey_params
  	params.require(:whiskey).permit(:name, :body, :price, :image, :rank)
  end	

end
