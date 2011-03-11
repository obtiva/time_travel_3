class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  
  has_many :purchases
  has_many :user_preferences
  has_many :friend_requests, :class_name => "Friend", :foreign_key => :request_sender_id
  has_many :friend_requests_received, :class_name => "Friend", :foreign_key => :request_receiver_id

  
  def friends
    friends = []
    friend_requests.each do |friend|
      friends << friend.receiver
    end
    friend_requests_received.each do |friend|
      friends << friend.sender
    end
    friends
  end
end
