class ChangeColumnnameTitleToCompanyInJobs < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :jobs, :title, :company
  end

  def self.down
    rename_column :jobs, :company, :title
  end
end
