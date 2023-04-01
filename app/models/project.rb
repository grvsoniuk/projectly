class Project < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates_presence_of :title
    validates_presence_of :desc
    validates_presence_of :status, :default => "New"

    COLOR_CODE = {  "New" => "warning", 
                    "Open" => "danger",
                    "Pending" => "info", 
                    "Solved" => "success" }.freeze
end
