require 'keyword'

describe Keyword do
  it "extracts keywords" do
    string = "Boris Johnson has quit as foreign secretary claiming in his resignation letter that the UK was headed “for the status of a colony” if Theresa May’s soft Brexit plans were adopted."
    Keyword.extract(string)
    result = [{:keyword=>"Boris", :score=>3.0},
       {:keyword=>"Brexit", :score=>3.0},
       {:keyword=>"Johnson", :score=>3.0},
       {:keyword=>"May", :score=>3.0},
       {:keyword=>"Theresa", :score=>3.0},
       {:keyword=>"adopted", :score=>1.0},
       {:keyword=>"claiming", :score=>1.0},
       {:keyword=>"colony", :score=>1.0},
       {:keyword=>"foreign", :score=>1.0},
       {:keyword=>"has", :score=>1.0},
       {:keyword=>"headed", :score=>1.0},
       {:keyword=>"his", :score=>1.0},
       {:keyword=>"letter", :score=>1.0},
       {:keyword=>"plans", :score=>1.0},
       {:keyword=>"quit", :score=>1.0},
       {:keyword=>"resignation", :score=>1.0},
       {:keyword=>"secretary", :score=>1.0},
       {:keyword=>"soft", :score=>1.0},
       {:keyword=>"status", :score=>1.0},
       {:keyword=>"was", :score=>1.0},
       {:keyword=>"were", :score=>1.0}]
    expect(Keyword.extract(string)).to eql(result)
  end
end
