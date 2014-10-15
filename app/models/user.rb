class User < ActiveRecord::Base
  has_many :resumes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def name
    email.sub(/@.*/, '')
  end

  def self.sorted_names_including_invited
    self.names_including_invited.sort
  end

end
