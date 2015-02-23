class WelcomeController < ApplicationController

  def index
  end

  def send_message
    response = Elibom.send_message(to: params[:number], text: params[:message])
    render text: response
  end
end
