class EventsController < ApplicationController
  def sort_by
  	@cm = Cm.all
  	@subscriber = Subscriber.new
  	@month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)


  end

  def category
  	@cm = Cm.all
  	@subscriber = Subscriber.new
  	@month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)
  	
  end


end
