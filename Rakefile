require 'pg'

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end

task :setup do
  p "Creating databases..."

  ['wordmap_test', 'wordmap'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{database};")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE articles(id SERIAL PRIMARY KEY, \
      text VARCHAR(10485760) UNIQUE);")
    connection.exec("CREATE TABLE keywords(id SERIAL PRIMARY KEY, \
      text VARCHAR(30) UNIQUE);")
    connection.exec("CREATE TABLE articles_keywords(id SERIAL PRIMARY KEY, \
      article_id integer REFERENCES article(id), keyword_id integer REFERENCES \
      keyword(id), score integer)")
  end
end

task :test_database_setup do
  p "Cleaning the database..."

  connection = PG.connect(dbname: 'wordmap_test')
  connection.exec("TRUNCATE article, keyword CASCADE, \
    articles_keywords CASCADE;")

  connection.close
end

task :teardown do
  p "Destroying databases... type 'y' to destroy the Wordmap databases."

  confirm = STDIN.gets.chomp
  return unless confirm == 'y'

  ['wordmap', 'wordmap_test'].each do |database|
    connection = PG.connect
    connection.exec("DROP DATABASE #{database}")
  end
end
