class Waste < ApplicationRecord
  def issues
    record = JSON.parse(content)
    record['items'].select.with_index { |_, i| record['checked'][i] }
  end

end
