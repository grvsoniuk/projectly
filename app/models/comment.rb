class Comment < ApplicationRecord
  audited only: :content

  belongs_to :job, touch: true
  belongs_to :user
  validates_presence_of :content
end
