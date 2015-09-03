class WelcomeController < ApplicationController
  def index
    if params.include?(:email)
      @welcome_email = WelcomeEmail.new(params.permit(:email))
      if @welcome_email.save
        flash.now[:success] = "Email added!"
      else 
        flash.now[:error] = @welcome_email.errors.full_messages.to_sentence
      end
    end
  end
end
