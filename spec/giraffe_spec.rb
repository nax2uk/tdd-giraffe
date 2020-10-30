require "./lib/giraffe"

describe RomanNumeral do
    let(:roman_numeral) {RomanNumeral.new}

    tests = {
        nil => nil,
        0 => '',
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V',
        6 => 'VI',
        7 => 'VII',
        8 => 'VIII',
        9 => 'IX',
        10 => 'X',
        11 => 'XI',
        12 => 'XII',
        13 => 'XIII',
        14 => 'XIV',
        15 => 'XV',
        16 => 'XVI',
        17 => 'XVII',
        18 => 'XVIII',
        19 => 'XIX',
        20 => 'XX',
        40 => 'XL',
        41 => 'XLI',
        50 => 'L',
        54 => 'LIV',
        61 => 'LXI',
        88 => 'LXXXVIII',
        90 => 'XC',
        99 => 'XCIX',
        100 => 'C',
        109 => 'CIX',
        121 => 'CXXI'
    }

    tests.each do | input, expected_output|
        it "given user inputs #{input}, returns #{expected_output}" do
            actual_output = roman_numeral.convert(input)

            expect(actual_output).to eq(expected_output)
        end
    end
  

end