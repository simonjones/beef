class NilClass

  # Avoid unecessary checks on a potential nil array
  def each
    []
  end
end