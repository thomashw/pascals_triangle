require_relative 'pascal_triangle'

class Main
  def run
    if ARGV.length != 1
      print_help
      exit
    end

    row = ARGV[0]

    triangle = PascalTriangle.new
    triangle.create(row)
    triangle.print_row(row)
  end

private

  def print_help
    puts 'This app takes an integer n as an argument and will print the nth row of Pascal\'s triangle.'
    puts "You need to include an integer, i.e. `ruby main.rb 4`."
  end

end

if __FILE__ == $0
  x = Main.new
  x.run
end