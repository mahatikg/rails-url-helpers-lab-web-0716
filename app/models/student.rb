require 'pry'
class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    # binding.pry
      if self.active
        'active'
        # "This student is currently active."
      else
        # "This student is currently inactive."
        'inactive'
      end
    end

    def change_status
      self.active = !self.active
      self.save
    end

  end
