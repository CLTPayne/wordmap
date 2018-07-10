require 'highscore'

class Keyword

  def self.extract(article)
    result = Highscore::Content.new(article)
    result.keywords.map { |keyword| { keyword: keyword.text, score: keyword.weight } }
  end

end
