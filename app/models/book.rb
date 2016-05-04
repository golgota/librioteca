class Book < ActiveRecord::Base
  def to_title
    title
  end
end

