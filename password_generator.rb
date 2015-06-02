loop do
  print 'Set password length (not less than 8 symbols): '

  @length = gets.to_i

  # определил 2 массива: гласные и согласные буквы
  @vowels = [:a, :e, :i, :o, :u, :y]
  @consonants = [:b, :c, :d, :f, :g, :h, :j, :k, :l, :m, :n, :p, :q, :r, :s, :t, :v, :w, :x, :z]

  def generate_password
    @length.times.each do
      @alphabet = [@vowels.sample, @consonants.sample].sample(1).join
      print @alphabet
    end
  end

  if @length >= 8
    generate_password
    exit
  else
    puts 'Wrong choice, try again'
  end
end