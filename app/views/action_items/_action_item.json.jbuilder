json.extract! action_item, :id, :name, :content, :state, :comment, :created_at, :updated_at
json.url action_item_url(action_item, format: :json)
