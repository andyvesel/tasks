require 'net/https'
require 'uri'

print 'Enter word to translate: '

word = gets.strip


  # uri = URI.parse('https://translate.yandex.net/api/v1.5/tr/detect')

  # params = { key: 'trnsl.1.1.20150602T124834Z.3912e53ab6807e56.55924160b82c19beeeea211cd149031e2e2623ef',
  #            text: "#{word}",
  #           }


uri = URI.parse('https://translate.yandex.net/api/v1.5/tr/translate')

params = { key: 'trnsl.1.1.20150602T124834Z.3912e53ab6807e56.55924160b82c19beeeea211cd149031e2e2623ef',
           text: "#{word}",
           lang: 'ru'
          }

uri.query = URI.encode_www_form(params)

response = Net::HTTP.get_response(uri)

f = File.open('translate.xml', "w") { |f| f.write("#{response.body}")}

f = File.open('translate.xml').read

f.each_line do |line|
  print line
end
