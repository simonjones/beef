class Hash

  def respond_to?(name, include_private = false)
    return true if key?(name.to_s) || key?(name.to_sym)
    return true if name.to_s =~ /=$/
    return true if name.to_s =~ /(.*)\?$/ && (key?($1) || key?($1.to_sym))
    super
  end
  
  def method_missing(name, *args)
    return self[name.to_s] if key?(name.to_s)
    return self[name.to_sym] if key?(name.to_sym)
    if args.size == 1 && name.to_s =~ /(.*)=$/
      return self[$1.to_s] = args.first
    end
    if args.empty? && name.to_s =~ /(.*)\?$/
      if (key?($1) || key?($1.to_sym))
        return self[$1] || self[$1.to_sym]
      else
        return false
      end
    end
    super
  end
end