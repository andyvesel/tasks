require 'net/https'
require 'uri'

print 'Enter word to translate: '

word = gets.strip

uri = URI.parse('https://translate.yandex.net/api/v1.5/tr/translate')

params = { key: 'trnsl.1.1.20150602T124834Z.3912e53ab6807e56.55924160b82c19beeeea211cd149031e2e2623ef',
           text: "#{word}",
           lang: 'ru'
          }

uri.query = URI.encode_www_form(params)

response = Net::HTTP.get_response(uri)
puts response