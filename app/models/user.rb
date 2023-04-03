class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    # validates :firstname, presence: true
    # validates :lastname, presence: true
    # validates :username, presence: true
    # validates :password, presence: true

    def user 
        create_table :users do |t|
            t.string :firstname
            t.string :lastname
            t.string :username
            t.string :password
        end
    end

    attr_writer :login

    def login
      @login || self.username || self.email
    end
end
