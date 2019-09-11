class SecretController < ApplicationController
  def index
    @secret = Secret.new
  end
  def create
  end  
end
