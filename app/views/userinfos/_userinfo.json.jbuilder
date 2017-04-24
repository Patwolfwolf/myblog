json.extract! userinfo, :id, :name, :created_at, :updated_at
json.url userinfo_url(userinfo, format: :json)
