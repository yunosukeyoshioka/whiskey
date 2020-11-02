class WhiskeysController < ApplicationController
  def index
  	@whiskeys = Whiskey.all
  end


  def show
  	@whiskey = Whiskey.find(params[:id])
    @genre = @whiskey.genre
 
    @review = Review.new
  end

  def edit
  end

  def new
  	@whiskey = Whiskey.new
  end

  def create

  	@whiskey = Whiskey.new(whiskey_params)
    @whiskey.genre_id = params[:whiskey][:genre]
    @whiskey.district_id = params[:whiskey][:district]
  	if @whiskey.save
  		redirect_to root_path
  	else 
  		flash[:danger] = '登録出来ませんでした。空欄の箇所はありませんか？'	
  		render "whiskeys/new"
     
  	end	

  end	

  def update
  end
  
  def destroy
    @whiskey = Whiskey.find(params[:id])
    @whiskey.destroy
    redirect_to whiskeys_path
  end	

  private
  def whiskey_params
  	params.require(:whiskey).permit(:name, :body, :price, :image, :genre_id, :district_id)
  end	

end
