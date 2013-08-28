class Fixnum

  def to_boolean
    case self
    when 0 then false
    else true
    end  
  end
  alias :to_b :to_boolean

end