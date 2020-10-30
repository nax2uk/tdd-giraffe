class RomanNumeral
    def convert(num = nil)
        return nil unless num
        ones = num % 10
        tens = num % 100 / 10
        hundreds = num % 1000 / 100
        
        return 'C'*hundreds << convert_helper(tens, 'X', 'L', 'C') << convert_helper(ones, 'I', 'V', 'X') if hundreds == 1
        return 'C'*hundreds << convert_helper(tens, 'X', 'L', 'C') << convert_helper(ones, 'I', 'V', 'X') 

    end

    def convert_helper(digit, first_symbol, middle_symbol, last_symbol)
        return first_symbol * (digit) if digit >= 0 && digit <= 3
        return first_symbol << middle_symbol if digit == 4
        return middle_symbol << first_symbol*(digit - 5) if digit >= 5 && digit <= 8
        return first_symbol << last_symbol if digit == 9
    end

end

# X = 10
# IX = 9
# V = 5
# IV = 4
# I = 1