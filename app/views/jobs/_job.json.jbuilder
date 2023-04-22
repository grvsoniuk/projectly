json.extract! job, :id, :company, :status, :desc, :created_at, :updated_at
json.url job_url(job, format: :json)
