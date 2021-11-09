class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    # auditions.map {|audition| audition.actor}
    auditions.pluck(:actor)
  end

  def locations
    # auditions.map {|audition| audition.location}
    auditions.pluck(:location)
  end

  def lead
    auditions.where(hired: 1).first || "no actor has been hired for this role"
  end

  def understudy
    auditions.where(hired: 1).second || "no actor has been hired for understudy for this role"
  end
end