class User < ActiveRecord::Base
      has_one :profile, :dependent => :destroy #ir a buscar el profile a partir del user_id


      # Include default devise modules. Others available are:   # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :confirmable, :lockable
end
