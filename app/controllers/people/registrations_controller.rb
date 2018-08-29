# frozen_string_literal: true

class People::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    # super
    @person = Person.new
    @person.people_middle_categories.build
  end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    # super
    @person = current_person
    # @person.people_middle_categories.build
  end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # def confirm
  #   @person = Person.new(configure_sign_up_params)
  #   if @person.valid?
  #     render :action => 'confirm'
  #   else
  #    render :action => 'new'
  #   end
  # end

  # def complete
  #   render :action => 'complete'
  # end


  def confirm
    @person = Person.new(sign_up_params)
    if @person.valid?
      render :action => 'confirm'
    else
     render :action => 'new'
    end
  end

  def complete
    render :action => 'complete'
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    logger.debug('========')
    logger.debug(sign_up_params.to_yaml)
    logger.debug('変更前')
    logger.debug(sign_up_params)
    logger.debug('変更後')
    # logger.debug(sign_up_params[:middle_categories_attributes][:middle_category_ids].map(&:to_i))
    # # logger.debug(sign_up_params[:middle_categories_attributes][:middle_category_ids][0].to_i)
    # logger.debug(sign_up_params[:middle_categories_attributes][:middle_category_ids][0].class)
    logger.debug('========')
    devise_parameter_sanitizer.permit(:sign_up) do |params|
      params.permit(:email, :password, :password_confirmation, :current_password,
                    middle_category_ids: [],
                    personinfo_attributes: [:person_id, :firstname, :lastname, :sex, :age, :live, :country, :copy, :program, :place, :method, :message, :image, :image_cache])
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update) do |params|
      params.permit(:email, :password, :password_confirmation, :current_password,
                    middle_categories_attributes: [:person_id, middle_category_ids: []],
                    personinfo_attributes: [:person_id, :firstname, :lastname, :sex, :age, :live, :country, :copy, :program, :place, :method, :message, :image, :image_cache])
    end
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    # super(resource)
    people_path
  end

  # サインアップ後のリダイレクト先
  def after_inactive_sign_up_path_for(resource)
    # super(resource)
    people_complete_path
  end

  # 編集終了後のリダイレクト先
  def after_update_path_for(resource)
    person_path(resource)
  end

  # サインイン成功時のリダイレクト先
  def after_sign_in_path_for(resource)
    # person_path(resource)
    users_path
  end

  # サインアウト成功時のリダイレクト先
  def after_sign_out_path_for(resource)
    people_complete_path
  end

end
