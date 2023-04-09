class Comment < ApplicationRecord
  audited only: :content

  belongs_to :project
  belongs_to :user
  validates_presence_of :content
end
