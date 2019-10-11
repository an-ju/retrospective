class ActionItem < ApplicationRecord
  after_initialize :init

  def init
    self.state ||= 0
  end
end
