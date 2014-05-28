class LineBreaker
  def initialize(text, char_number=80)
    @text = text
    @char_number = char_number
  end

  def broken_lines
    new_string = ""

    @text.each_line do |line|
      new_line = line

      num=@char_number

      until num > line.length
        until line[num] =~ /\s/
          num = num - 1
        end
        new_line[num] = "\n"
        num = num + @char_number
      end

      new_string = new_string + new_line
    end
    new_string

  end
end