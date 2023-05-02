class Job < ApplicationRecord
    audited only: :status

    has_many :comments, dependent: :destroy
    belongs_to :user
    validates_presence_of :company
    validates_presence_of :status, :default => "New"
    has_rich_text :desc

    COLOR_CODE = {  "Applied" => "warning",
                    "Recruiter" => "danger",
                    "In Process" => "info",
                    "Offered" => "success",
                    "Rejected" => "secondary"}.freeze
end
