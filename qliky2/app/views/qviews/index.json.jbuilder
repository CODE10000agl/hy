json.array!(@qusers) do |quser|
  json.extract! quser, :id, :displayname, :qmail, :encrypass, :qsubscriber, :qoid
  json.url quser_url(quser, format: :json)
end
