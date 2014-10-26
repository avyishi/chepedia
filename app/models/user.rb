class User < ActiveRecord::Base
  has_many :wikis

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable

  def payment
    customer = Stripe::Customer.create(:card => token,:description => "avyishi@yahoo.com")
  end
end
