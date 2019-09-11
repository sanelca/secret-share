class SecretController < ApplicationController
  def index
    @secret = Secret.new
    @secrets = Secret.all
  end
end
