class ApplicationController < ActionController::Base

  # 未ログイン時、ログインページへリダイレクト
	# before_action :authenticate_user!
	# before_filter :authenticate_person!

  # CSRF保護をオンにする以下の1行を有効にします。
  protect_from_forgery with: :exception
  # ログイン済ユーザーのみにアクセスを許可する
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:userinfo_attributes => [:user_id, :nickname, :sex, :age, :live, :country]])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:userinfo_attributes => [:user_id, :nickname, :sex, :age, :live, :country]])
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :personinfo_attributes => [:person_id, :firstname, :lastname, :sex, :age, :live, :country, :copy, :program, :place, :method, :message, :image, :image_cache],
      :middle_categories_attributes => [ {middle_category_ids:[]}]
    ])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :personinfo_attributes => [:person_id, :firstname, :lastname, :sex, :age, :live, :country, :copy, :program, :place, :method, :message, :image, :image_cache],
      :middle_categories_attributes => [ {middle_category_ids:[]}]
  ])
  end

end
