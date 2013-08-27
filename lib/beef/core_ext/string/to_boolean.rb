class String

  def to_boolean
    case self.downcase
    when 'false', '0', 'no', 'nil', 'null' then false
    else true
    end  
  end
  alias :to_b :to_boolean

end