class User < ActiveRecord::Base
  has_many :recipes
  has_many :reviews, dependent: :destroy
  has_many :blog_comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  mount_uploader :avatar, ImageUploader
  
  # coordinate info and crop avatar method for jCrop
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]
  
  # "virtual" attribute so can login with username OR email 
  attr_accessor :login
  
  validates :email, presence: true,
    uniqueness: { case_sensitive: false }
    
  validates :username, uniqueness: true, if: -> { self.username.present? }
  validates :username, presence: true,
      length: { maximum: 15 },
      format: { with: /\A[a-zA-Z0-9\-\.\_]*\z/,
      message: "Only letters, numbers, dot(.), dash(-) and underscore(_) allowed." }
      
  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
   
  # this permits login with username OR password
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      conditions[:email].downcase! if conditions[:email]
      where(conditions.to_hash).first
    end
  end
end
