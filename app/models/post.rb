class Post < ActiveRecord::Base

validates :status, :user, presence: true


end
