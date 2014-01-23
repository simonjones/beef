# encoding: utf-8
class String
  IGNORE =  %w( the is to a an and as at but by for if in of on or via )
  REG_IGNORE = IGNORE.join('|')

  def titleise
    result = ""
    self.gsub(/[_-]/, ' ').split(/( [:.;?!][ ] | (?:[ ]|^)["“] )/x).each do |substring|
      substring.gsub!(/ \b( [[:alpha:]] [[:lower:].'’]* )\b /x) do |word|
        # Ignore words that contain dots - e.g urls
        (word =~ / [[:alpha:]] [.] [[:alpha:]] /x) ? word : word.capitalize
      end #gsub!

      # Downcase the list of words to ignore
      substring.gsub!(/\b(#{REG_IGNORE})\b/io) { |word| word.downcase }

      # If the first or last words are in the ignore list then capetlise them regardless.
      substring.gsub!(/\A([[:punct:]]*)(#{REG_IGNORE})\b/io) { |word| $1 + $2.capitalize }
      substring.gsub!(/\b(#{REG_IGNORE})([[:punct:]]*)\Z/io) { |word| $1.capitalize + $2 }
      
      result += substring
    end

    # Special case "'s"
    result.gsub!(/(['’])S\b/, '\1s')
    result
  end

  def titleise!
    self.replace(self.titleise)
  end

end