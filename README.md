# Word Map

Full stack exploration of words and text. Mapping text based data in various ways with the aim of an interactive graphical visualisation on the front-end.

### Quickstart:
#### How to install the code:
1. Clone this project ```git clone https://github.com/CLTPayne/wordmap.git```
2. Change into the directory ```cd wordmap```
3. Use Ruby 2.5.0
4. Run ```bundle install``` to add module dependencies

#### Run Tests:
1. ```rspec```

#### Project Goals:
1. Many-to-many relational database practise
2. Explore how to choose and manage external Gem dependencies
3. Eventually mix languages in a single project as plan to use JavaScript on the front end for the final visualisation.
4. A project that can be easily iterated on to build in new technologies and features (simulating new user requirements)

#### Approach:
1. Research a word count gem for key word extraction.
2. Explore the gem in IRB.
3. Use IRB exploration to test drive initial implementation
4. Set up PSQL database connection and schema.

#### Code Example:
```
class Keyword

  def self.extract(article)
    result = Highscore::Content.new(article)
    result.keywords.map { |keyword| { keyword: keyword.text, score: keyword.weight } }
  end

end
```

#### Specification:
```
As an online media lover
So that I can see word patterns in an article
I want to know what key words appear most often
```
