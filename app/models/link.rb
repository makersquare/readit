class Link < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
  has_many :comments
  
  searchable do
    text :title
  end
  
  def self.search(query)
    where('title LIKE ?', "%#{query.gsub(/ /, '%')}%")
  end
  
end
