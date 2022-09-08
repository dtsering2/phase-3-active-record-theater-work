class Audition < ActiveRecord::Base
  belongs_to :roles

  def call_back
    self.update(hired: true)
  end
end