require 'line_breaker'

describe LineBreaker do
  it "breaks up lines at default-80 length" do

    text = <<TEXT
Jean shorts you probably haven't heard of them farm-to-table. Jean shorts you probably haven't heard of them farm-to-table. Jean shorts you probably haven't heard of them farm-to-table.

Another line.
TEXT
    expected = <<TEXT
Jean shorts you probably haven't heard of them farm-to-table. Jean shorts you
probably haven't heard of them farm-to-table. Jean shorts you probably haven't
heard of them farm-to-table.

Another line.
TEXT

    broken_text = LineBreaker.new(text)
    actual = broken_text.broken_lines
    expect(actual).to eq expected
  end

  it "breaks up lines at specificied length" do

    text = <<TEXT
Jean shorts you probably haven't heard of them farm-to-table.

Another line.
TEXT
    expected = <<TEXT
Jean shorts you
probably haven't
heard of them
farm-to-table.

Another line.
TEXT

    broken_text = LineBreaker.new(text, 20)
    actual = broken_text.broken_lines
    expect(actual).to eq expected
  end
end
