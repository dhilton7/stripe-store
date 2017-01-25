class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable,
  		 :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  has_many :products

  def connected?
  	publishable_key.present? && provider.present? && uid.present? && access_code.present?
  end
  
end
