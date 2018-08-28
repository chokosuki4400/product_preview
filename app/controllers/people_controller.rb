class PeopleController < ApplicationController
  def index
  	# puts params[:comment]
  	@people = Person.all
  end

  def show
  	# IDに紐付いた「personinfo」の情報を取得
  	@person = Person.find(params[:id]).personinfo
  end
end
