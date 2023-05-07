class Follow < ApplicationRecord
  belongs_to :follewd, class_name: "User"
  belongs_to :follower, class_name: "User"
end
