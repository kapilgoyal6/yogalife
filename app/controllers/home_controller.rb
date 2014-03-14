class HomeController < ApplicationController

  def index
    @cm = Cm.all
  	@banners = Banner.all
  	@manage_news = ManageNews.order('updated_at DESC').limit(3).all
  	@manage_nourishes = ManageNourish.order('updated_at DESC').limit(1).all
  	@manage_heals = ManageHeal.order('updated_at DESC').limit(1).all
  	@manage_glows = ManageGlow.order('updated_at DESC').limit(1).all
  	@manage_retreats = ManageRetreat.order('updated_at DESC').limit(1).all
  	@manage_greens = ManageGreen.order('updated_at DESC').limit(1).all
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1)
    @horoscopes = Horoscope.all
    @subscriber = Subscriber.new


    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)
  end


  def mag
    @cm = Cm.all
  	@magazines = Magazine.order('issue_date DESC')
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def events
    @cm = Cm.all
    @events = ManageEvent.order('updated_at DESC').page(params[:page]).per(6)
    @subscriber = Subscriber.new


    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)

    render :layout => "events"


  end

  def directory
    @cm = Cm.all
    @manage_directories = ManageDirectory.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def horos
    @cm = Cm.all
    @horoscopes = Horoscope.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def news
    @cm = Cm.all
    @news = ManageNews.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def contact
    @cm = Cm.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def about
    @cm = Cm.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def team
    @cm = Cm.all
    @manage_teams = ManageTeam.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def where_to_buy
    @cm = Cm.all
    @wheretobuys = Wheretobuy.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def article
    @cm = Cm.all
    @manage_articles = ManageArticle.all
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewnews
    @cm = Cm.all
    @news = ManageNews.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewpose
    @cm = Cm.all
    @pose = ManagePose.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewnourish
    @cm = Cm.all
    @nourish = ManageNourish.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewheal
    @cm = Cm.all
    @heal = ManageHeal.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewglow
    @cm = Cm.all
    @glow = ManageGlow.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewretreat
    @cm = Cm.all
    @retreat = ManageRetreat.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewgreen
    @cm = Cm.all
    @green = ManageGreen.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def viewmagazine
    @magazine = Magazine.find_by_id(params[:id])
    # @attachments = Attachment.all
    @attachments = Attachment.find_all_by_attachable_id(params[:id])
    @count = Attachment.find_all_by_attachable_id(params[:id]).count
    render :layout => false

  end

  def eventdetail
    @cm = Cm.all
    @event = ManageEvent.find_by_slug(params[:id])
    @event_images = EventImage.find_all_by_attachable_id(@event.id)
    @subscriber = Subscriber.new

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)
    
    render :layout => "events"
  end

  def event
    @cm = Cm.all
    @events = ManageEvent.find_by_id(params[:id])
    @event_images = EventImage.find_all_by_attachable_id(params[:id])
    @subscriber = Subscriber.new

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = ManageEvent.event_strips_for_month(@shown_month)
    
    render :layout => "events"
  end

  def viewarticle
    @cm = Cm.all
    @article = ManageArticle.find_by_slug(params[:id])
    @manage_magazines = Magazine.order('updated_at DESC').limit(1).all
    @subscriber = Subscriber.new
    @manage_articles = ManageArticle.order('updated_at DESC').limit(4).all
    render :layout => "category"
  end

  def routing
    render :layout => "routing"
  end

end
