class CreateManageFollowUs < ActiveRecord::Migration
  def change
    create_table :manage_follow_us do |t|
      t.string :facebook_url
      t.string :twitter_url
      t.string :google_url
      t.string :youtube_url
      t.string :ping_url
      t.string :vimeo_url
      t.string :tumbir_url
      t.string :rss_url
      t.string :flickr_url

      t.timestamps
    end
  end
end
