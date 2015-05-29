print 'Set password length (not less than 8 symbols): '

length = gets.to_i

vowels = [:a, :e, :i, :o, :u, :y]
consonants = [:b, :c, :d, :f, :g, :h, :j, :k, :l, :m, :n, :p, :q, :r, :s, :t, :v, :w, :x, :z]


length.times.each do
  alphabet = [vowels.sample, consonants.sample].sample(2).join
  print alphabet
end
