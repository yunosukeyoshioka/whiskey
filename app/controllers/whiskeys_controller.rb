class WhiskeysController < ApplicationController
  def index
    #ransackのため一時的にコメントアウト
  	#@whiskeys = Whiskey.all

    @search = Whiskey.search(params[:q])
    @whiskeys = @search.result

  end


  def show
  	@whiskey = Whiskey.find(params[:id])
    @genre = @whiskey.genre
  end

  def edit
  end

  def whiskey_comments
    @whiskey = Whiskey.find(params[:id])
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
  	params.require(:whiskey).permit(:name, :body, :price, :image, :genre_id, :district_id, :rating)
  end	

end
