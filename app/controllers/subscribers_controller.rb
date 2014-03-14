class SubscribersController < ApplicationController

before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

	def index
		@subscribers = Subscriber.all
	end

	def create
	    @subscriber = Subscriber.new(subscriber_params)
	    respond_to do |format|
		  if @subscriber.save
		  	SubscriptionMailer.send_email(@subscriber).deliver
		    format.html { redirect_to :back, flash[:notice] = "Thanks for your interest! We'll let you know when the app is in beta." }
		    format.js
		  else
		    format.html { render :action => :new }
		    format.js
		  end
		end
  	end

	def destroy
		@subscriber.destroy
		respond_to do |format|
		  format.html { redirect_to subscribers_url, notice: 'Record successfully deleted.' }
		  format.json { head :no_content }
		end
	end


private

	def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end
    
    def subscriber_params
      params.require(:subscriber).permit(:email)
    end



end
