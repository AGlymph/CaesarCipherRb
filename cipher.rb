def caesar_cipher(string, number = 0)
    new_string = ""
    string.each_char do |c| 
        char_code = c.ord
        case char_code
        when 65..90
            char_code += number
            if char_code > 90 
                char_code -= 26  
            end 
        when 97..122
            char_code += number
            if char_code > 122 
                char_code -= 26  
            end
        end
        new_string += char_code.chr
    end
    puts new_string
end
