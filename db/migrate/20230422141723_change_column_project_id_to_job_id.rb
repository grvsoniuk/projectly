class ChangeColumnProjectIdToJobId < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :comments, :project_id, :job_id
  end

  def self.down
    rename_column :comments, :job_id, :project_id
  end
end
