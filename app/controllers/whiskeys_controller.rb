class WhiskeysController < ApplicationController
  PER = 2
  def index
  	@whiskeys = Whiskey.all.search(params[:search]).page(params[:page]).per(PER)
  end  


  def show
  	@whiskey = Whiskey.find(params[:id])
    @genre = @whiskey.genre
  end

  def edit
    @whiskey = Whiskey.find(params[:id])
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
    @whiskey = Whiskey.find(params[:id])
    if @whiskey.update(whiskey_params)
      flash[:notice] = '編集完了'
      redirect_to whiskey_path(@whiskey)
    else
      flash[:alert] = '編集失敗'
      render "/whiskeys/edit"
    end  
  end
  
  def destroy
    @whiskey = Whiskey.find(params[:id])
    @whiskey.destroy
    flash[:notice] = '投稿を削除しました'
    redirect_to whiskeys_path
  end	

  private
  def whiskey_params
  	params.require(:whiskey).permit(:name, :body, :price, :image, :genre_id, :district_id, :rating, :user_id)
  end	

end
