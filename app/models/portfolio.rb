class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: "Angular")
  end
    
  scope :ruby, -> { where(subtitle: 'Ruby on Rails') }
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://dfp3r41v9wmfi.cloudfront.net/wp-content/uploads/emperor_chicks.jpg"
    self.thumb_image ||= "http://www.bunnyslippers.com/blog/wp-content/uploads/2013/11/rabbit-book-glasses.jpg"
  end
end
