@international_morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(letter_code)
  @international_morse_code[letter_code] 
end

def decode_word(word_code)
  letters = word_code.split(' ').map { |letter_code| decode_char(letter_code) }
  letters.join('')
end

def decode(morse_code)
  words = morse_code.split('   ').map { |word_code| decode_word(word_code) }
  words.join(' ')
end

puts(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
