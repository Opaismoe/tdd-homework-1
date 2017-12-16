class Codebreaker
  class Game
    attr_reader :output


    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)

      unless input.length == 4
        output.puts 'Try guessing a number with four digits'
      end

      guessed_number = input.split("")
      secret_number_arr = @secret_number.split("")

      for num in (0..3)
        if guessed_number[num] == secret_number_arr[num]
          output.puts "+"
          return secret_number_arr
        end
      end

      for num in (0..3)
        if guessed_number.include?(secret_number_arr[num])
          output.puts "-"
        else !guessed_number.include?(secret_number_arr[num])
          output.puts ""
        end
      end
      
    end
  end
end
