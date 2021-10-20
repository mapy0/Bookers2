class ApplicationController < ActionController::Base
  #ログインしていない状態でのアクセス制限
  before_action :authenticate_user!,except: [:top] #Top画面は除く

  #deviseのstrong parameters
   before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  protected

  def configure_permitted_parameters #許可されたパラメーターを構成する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #sign_upの時にユーザ名(name)のデータ操作許可。
  end

end
