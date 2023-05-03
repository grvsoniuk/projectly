class AddColumnLinkToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :job_link, :string
  end
end
