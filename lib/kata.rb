require 'kata/logging'
require 'kata/version'

# Write a roman numerals converter. It should accept roman numerals as strings
# as well as arabic numbers as integers. There is no need to instantiate a new
# object each time, just use the same object.
#
#     >  Kata::Converter.instance.convert('I')
#     => 1
#
#     >  Kata::Converter.instance.convert(1)
#     => 'I'
#
#
# Roman numerals use addition and subtraction for missing arabic numbers. When
# you use addition you can add the same character up to 3 times . For example:
#
#     1 = I,  2 = II,  3 = III  -> OK
#     6 = VI, 7 = VII, 8 = VIII -> OK
#
#     4 = IIII, 9 = VIIII       -> NOT OK, BUT VALID.
#
#     Note: Addition is always used to the right. If a bigger value is followed
#           by the same value or a smaller value addition is used!
#
#
# Since you shouldn't use the same character for a fourth time you need to use
# subtraction. When you use subtraction you can subtract a character only
# once and you can only use the nearest lower value character. After that
# addtion is used. For examle:
#
#     4 = IV, 9 = IX      -> OK
#
#     3  != IIV, 2 = IIIV -> NOT OK. NOT VALID.
#     5   = VX,           -> OK, BUT NOT VALID.
#     45  = VL            -> OK, BUT NOT VALID.
#     45  = XLV           -> OK
#
#     Note: Subtraction is always used to the left. If a smaller value is
#           followed by a bigger number subtraction is used!
#
#
# ------------------------------------------------------------------------------
# Recap: A smaller number in front of a larger number means subtraction, all
#        else means addition. For example, IV means 4, VI means 6.
# ------------------------------------------------------------------------------
#
#
# Following a translation table:
#
#     +-------+-------+------+------+------+------+------+
#     |     I |     V |    X |    L |    C |    D |    M |
#     +-------+-------+------+------+------+------+------+
#     |     1 |     5 |   10 |   50 |  100 |  500 | 1000 |
#     +-------+-------+------+------+------+------+------+
#
#     +-------+-------+------+------+------+------+
#     |     4 |     9 |   40 |   90 |  400 |  900 |
#     +-------+-------+------+------+------+------+
#     |    IV |    IX |   XL |   XC |   CD |   CM |
#     +-------+-------+------+------+------+------+
#
#
# Following these rules the biggest possible roman number is 3999 and the lowest
# is 1. There is no zero. Don't care about line multiplication by 1000!
#
# Optional Challange: Convert negative arabic and roman numbers.
#
#     >  Kata::Converter.instance.convert('-I')
#     => -1
#
#     >  Kata::Converter.instance.convert(-1)
#     => '-I'

module Kata
  class Error < StandardError; end
  # Your code goes here...
end

