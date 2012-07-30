class Anagrams
  
  def combine_anagrams(words)
    word_map = {}
    s_words = []
    words.each_index {|i| 
      s_word = words[i].downcase().chars.sort.join
      if(word_map.keys.include? s_word)
        id = word_map[s_word]
        s_words[id].push(words[i])
      else
        # puts word_map.length
        word_map[s_word] = word_map.length
        s_words.push([]);
        s_words[word_map.length - 1].push(words[i])
      end
    }
    
    print s_words
  end
  
end

words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']

Anagrams.new().combine_anagrams(words)
