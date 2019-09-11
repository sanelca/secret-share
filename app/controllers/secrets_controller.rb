
class SecretsController < ApplicationController
  def create
    @secret = Secret.new(secret_params)
    @secret.save
    redirect_to root_path
  end

  private
    def secret_params
      params.require(:secret).permit(:message)
    end

end
