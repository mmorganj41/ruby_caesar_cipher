def caesar_cipher(string, shift)
    string.chars.map do |ch|
        next ch if ch.match(/[^a-zA-Z]/)
        neword = ch.ord + shift
        if ch.match(/[a-z]/)
            until neword <= "z".ord
                neword -= 26
            end
        else
            until neword <= "Z".ord
                neword -= 26
            end
        end
        neword.chr
    end.join()
end
