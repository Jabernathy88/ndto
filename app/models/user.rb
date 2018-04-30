class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tournaments,  foreign_key: :user_id

  # def can_edit_generator(generator_id)
  #   generator = Generator.find(generator_id)
  #   generator.author_id == id
  # end

end
