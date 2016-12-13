class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable
has_many :tasks
  #has_many :teachers, :through => :users,:source => :friend, :conditions => "status ='accepted'"
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :username, :dob, :full_name
  # attr_accessible :title, :body

  validates :email,
            :presence => true,
            :length => { :minimum => 4 }
  validates :first_name,:last_name, :username, :password, :password_confirmation,
            :presence => true #, on: create
  validates :username,
            :uniqueness => {
                :case_sensitive => false,
                :message => 'Sorry, someone already picked that username :(' },
            :length => {
                :minimum => 6,
                :maximum => 20,
                :too_short => "Username has to be at least %{count} characters",
                :too_long => "Username has to be at less than %{count} characters"
            }
 #End Validations

  def full_name
    [first_name, last_name].join(' ')
  end
  
end