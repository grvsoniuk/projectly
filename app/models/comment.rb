class Comment < ApplicationRecord
  audited only: :content

  belongs_to :project
  validates_presence_of :content
end
