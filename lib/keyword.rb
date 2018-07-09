require 'highscore'

class Keyword

  def self.extract(text)
    result = Highscore::Content.new(text)
    result.keywords.map { |keyword| { keyword: keyword.text, score: keyword.weight } }
  end

end
