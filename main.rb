def caesar_cipher(string, shift)
    shift = shift%26
    string.chars.map do |ch|
        next ch if ch.match(/[^a-zA-Z]/)
        neword = ch.ord + shift
        if (ch.match(/[a-z]/) && neword > "z".ord) || (ch.match(/[A-Z]/) && neword > "Z".ord)
            neword -= 26
        end
        neword.chr
    end.join()
end
