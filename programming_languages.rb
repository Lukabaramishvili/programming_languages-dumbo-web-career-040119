require 'pry'

def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, language|
      language.each do |name, type_info|
        if new_hash[name]
          new_hash[name][:style] << style
        else
          new_hash[name] ={ style: [style], type: type_info[:type]}
        end
      end
    end
    return new_hash
end
