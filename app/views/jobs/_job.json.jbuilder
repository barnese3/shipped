json.extract! job, :id, :name, :description, :origin, :destination, :cost, :containers, :created_at, :updated_at
json.url job_url(job, format: :json)
