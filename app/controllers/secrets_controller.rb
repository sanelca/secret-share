
class SecretsController < ApplicationController
  def create
    @secret = Secret.new(secret_params)
    @secret.save
    redirect_to root_path
  end

  def show
    @secret = Secret.find_by(public_uid: params[:id])
    if @secret
      @secret.destroy
    else
      redirect_to root_path
    end

  end

  private
    def secret_params
      params.require(:secret).permit(:message)
    end

end
