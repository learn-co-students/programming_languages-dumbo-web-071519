def reformat_languages(languages)
  new_hash={}
  languages.each do |style_name, language_set|
    language_set.each do |lang_name, type_info|
      new_hash[lang_name] = type_info
    end 
  end 
  new_hash.each do |language, info|
    info[:style] = []
    languages.each do |style_name, info_set|
      if info_set.keys.include?(language)
        info[:style].push(style_name)
      end 
    end 
  end 
  new_hash
end
