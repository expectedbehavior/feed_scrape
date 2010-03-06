require 'open-uri'
class PageMatcher < ActiveRecord::Base
  
  def items
    @items ||=
      begin
        p = open(self.url) { |f| f.read }
        p.scan(YAML::load(self.item_regexp))
      end
  end
  
end
