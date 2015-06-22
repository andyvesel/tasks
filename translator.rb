require 'net/https'
require 'uri'
require 'rexml/document'
  include REXML

print 'Enter your text: '

@word = gets.strip

def language_detect
  @uri = URI.parse('https://translate.yandex.net/api/v1.5/tr/detect')
  @params = { key: 'trnsl.1.1.20150602T124834Z.3912e53ab6807e56.55924160b82c19beeeea211cd149031e2e2623ef',
              text: "#{@word}", 
            }
end

def translate
  @uri = URI.parse('https://translate.yandex.net/api/v1.5/tr/translate')
  @params = { key: 'trnsl.1.1.20150602T124834Z.3912e53ab6807e56.55924160b82c19beeeea211cd149031e2e2623ef',
              text: "#{@word}",
              lang: 'ru'
            }
end

def get_response
  @uri.query = URI.encode_www_form(@params)
  @response = Net::HTTP.get_response(@uri)
end

def text_to_file
  @f = File.open('translate.xml', 'w') { |f| f.write("#{@response.body}") }
  @f = File.open('translate.xml').read
end

def show_text
  doc = Document.new(@f)
  doc.elements.each("Translation/text") { |e| print e.text }
end

translate
get_response
text_to_file
show_text