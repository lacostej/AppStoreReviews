words = File.open(ARGV[0]) {|f| f.read }.split 
freqs=Hash.new(0) 
words.each { |word| freqs[word] += 1 } 
freqs.sort_by {|x,y| y }.reverse.each {|w, f| puts w+' '+f.to_s} 
