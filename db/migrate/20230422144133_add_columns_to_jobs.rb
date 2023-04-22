class AddColumnsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :role, :string
    add_column :jobs, :recruiter, :string
    add_column :jobs, :technology, :string
    add_column :jobs, :next_meetup, :datetime
  end
end
