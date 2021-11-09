class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    update(hired: 1)
  end
end