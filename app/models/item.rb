class Item < ActiveRecord::Base
  belongs_to :list

  def complete!
    update_attribute :is_complete, true
  end

  def due!(date)
    update_attribute :due_date, date
  end

end