class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_messageable

  # has_many :sent_messages, class_name: 'Message', foreign_key: :sender_id
  # has_many :received_messages, class_name: 'Message', foreign_key: :recipient_id

  validates_uniqueness_of :email
  # validates_presence_of :name

  # has_secure_password

  def mailboxer_email(object)
    #Check if an email should be sent for that object
      #if true
        return email
      #if false
        #return nil
  end

end
