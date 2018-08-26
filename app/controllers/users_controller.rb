class UsersController < ApplicationController
  def index
  	# IDに紐付いた「userinfo」の情報を取得
  	@users = User.all
  end

  def show
  	# IDに紐付いた「userinfo」の情報を取得
  	@user = User.find(params[:id]).userinfo
  end
end
