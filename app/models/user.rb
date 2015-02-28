class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, :foreign_key => :author_id
  has_many :comments, :foreign_key => :author_id

  def name
    "#{first_name} #{last_name}"
  end

end
