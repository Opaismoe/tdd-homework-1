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

      guessed_number = input.split("")
      secret_number_arr = @secret_number.split("")

      match = 0
      no_match = 0
      @exact_match = 0

      #match
      for num in (0..3)
        if guessed_number.include?(secret_number_arr[num])
          match += 1
          #no match
        else !guessed_number.include?(secret_number_arr[num])
          no_match += 1
        end
      end

      #exact match
      for num in (0..3)
        if guessed_number[num] == secret_number_arr[num]
          @exact_match += 1
        end
      end




      unless input.length == 4
        output.puts 'Try guessing a number with four digits'
      else
        match = match - @exact_match
        exact_score = "+"*@exact_match
        match_score = "-"*match
        no_match_score = ""*no_match
        final_score = exact_score + match_score + no_match_score
        output.puts final_score
      end

    end
  end
end
