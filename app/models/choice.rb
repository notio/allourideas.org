class Choice < ActiveResource::Base
  self.site = "http://pairwise.heroku.com/questions/:question_id/"
  attr_accessor :name, :question_text, :question_ideas

  def question_id
    prefix_options[:question_id]
  end
  
  def path
    "/questions/#{question_id}/choices/#{id}"
  end
  def data
    attributes['data']
  end
end
