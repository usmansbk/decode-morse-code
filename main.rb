@international_morse_code = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
}

def decode_char(letter_code)
    alphabet = @international_morse_code[letter_code] 
    return alphabet
end

def decode_word(word_code)
    letters = word_code.split(" ").map { |letter_code| decode_char letter_code }
    return letters.join("") 
end

def decode(morse_code)
    words = morse_code.split("   ").map { |word_code| decode_word(word_code)}
    return words.join(" ")
end

# A BOX FULL OF RUBIES
puts(decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."))