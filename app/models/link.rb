class Link < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
  has_many :comments
  
  searchable do
    text :title
  end
  
  def self.db_search(query)
    where('title LIKE ?', "%#{query.gsub(/ /, '%')}%")
  end
  
  def self.search(query, params={})
    solr_search do
      
      fulltext query do
        minimum_match 1
      end
      
      paginate :page => params[:page], :per_page => params[:per_page]
    end
  end
  
end