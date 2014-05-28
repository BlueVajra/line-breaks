class LineBreaker
  def initialize(text, char_number)
    @text = text
    @char_number = char_number
  end

  def broken_lines
    #read through lines
    #for each line check for the 20th char
    #if the 20th char is whitespace, break line,
    #if not, move backwards til it is
    new_string = ""

    @text.each_line do |line|
      new_line = line

      num=20

      until num > line.length
        until line[num] =~ /\s/
          num = num - 1
        end
        new_line[num] = "\n"
        num = num + 20
      end

      new_string = new_string + new_line
    end
    new_string

  end
end