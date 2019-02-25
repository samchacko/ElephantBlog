# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  body             :text
#  description      :text
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  author_id        :integer
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#

class Post < ApplicationRecord

  # added on 10 27 per video # 9
  
  acts_as_taggable # Alias for acts_as_taggable_on :tags

  # added on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x @ 7:47
     
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :author
  scope :most_recent, -> {order(published_at: :desc) }

  # aded on 10-26 per video # 7
  scope :published, -> {where(published: true)}
  
  def should_generate_new_friendly_id?
    title_changed?
  end

  def display_day_published
    if published_at.present?

    "published #{published_at.strftime('%-b %-d, %Y')}"
    else
      "not pblished yet."
    end


    # %m/%d/%Y

    # "published #{published_at}"
  end

  
  # added per video # 7
  def publish
    update(published: true, published_at: Time.now)
          
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
