require 'hpricot'
require 'open-uri'

output = Hpricot(open('http://bash.im'))

puts output.search("//div[@class='text']").inner_html