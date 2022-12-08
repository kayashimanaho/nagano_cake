# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
   before_action :customer_state, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  # 退会しているかを判断するメソッド
  def customer_state
    # 入力されたemailからアカウントを一件取得
    @customer = Customer.find_by(email: params[:customer][:password])
    # アカウントを取得出来なかった場合、このメソッドを終了する
    return if !@customer
    # 取得したアカウントのパスワードと入力されたパスワードが一致しているかを判断
    if @customer.valid_password?(params[:customer][:password])
    # 条件式の記述が
  end
    
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
