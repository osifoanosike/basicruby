#QUESTION 16
class SearchOps
  def search_text(text, search_param)
    match_count = 0
    result = text.gsub(/#{search_param}/) do |match|
      match_count += 1
      "(#{match})"
    end
    response = { "search_result"=> result, "count"=> match_count }
  end
end