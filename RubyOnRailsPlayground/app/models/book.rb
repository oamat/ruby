class Book < ActiveRecord::Base

  validates :author, :presence => true, :uniqueness => true

  validates :title, :presence => true,  :uniqueness => true

  validates :description, :presence => true



  def self.search(search)
    if search
     where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end


end
