#QUESTION 16
class String
  def search_text( search_param)
    match_count = 0
    result = self.gsub(/#{search_param}/i) do |match|
      match_count += 1
      "(#{match})"
    end
    response = { "search_result"=> result, "count"=> match_count }
  end
end