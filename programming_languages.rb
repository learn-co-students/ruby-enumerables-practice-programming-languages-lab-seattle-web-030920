def reformat_languages(languages)
  new_hash={}
  languages.each{ |style, language_hash|
    language_hash.each{ |lang, type|
    if !new_hash[lang]
      type[:style]=[style]
      new_hash[lang]=type
    else
      new_hash[lang][:style] << style
    end
    }
  }
  new_hash
end
