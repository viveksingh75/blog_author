class RegitrationsController < ApplicationController
    def new
      @author = Author.new
    end
      
    def create
      @author = Author.new(author_params)
      if @author.save
        send_welcome_sms(@author.contect,@author.name) if @author.contect.present?
        RegistrationMailer.welcome_email(@author).deliver_now
        redirect_to blogs_path , notice: 'User  successfully created'
      else
        render :new, status: :unprocessable_entity
      end
    end
    private 
    def send_welcome_sms(contect, name)
      client = Twilio::REST::Client.new
  
      message = client.messages.create(
        from: 'MG5c2d242ebbbb94bcad6daec92e7637ad',
        to: contect,
        body: "Welcome to #{name}! Thank you for signing up."
      )
      
      puts "Sent SMS with SID: #{message.sid}"
    end
     def author_params
      params.require(:author).permit(:password, :password_confirmation, :name, :contect,:email,:role)
     end
     
end
