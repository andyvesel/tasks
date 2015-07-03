require 'hpricot'
require 'open-uri'
require 'json'

output = Hpricot(open('http://bash.im'))

puts output.search("//div[@class='text']").inner_html.to_json