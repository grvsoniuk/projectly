class RenameTableJobsToJobs < ActiveRecord::Migration[7.0]
  def change
    rename_table :projects, :jobs
  end
end
