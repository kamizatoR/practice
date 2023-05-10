class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :relationships, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_of_relationships, class_name: "Follow", foreign_key: "followed_id", dependent: :destroy

  # 一覧画面で使う
  has_many :followings, through: :relationships, source: :followed
  has_many :followers, through: :reverse_of_relationships, source: :follower

  has_many :active_notification, class_name: "Notification", foreign_key: "visiter_id", dependent: :destroy
  has_many :passive_notification, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy


end
