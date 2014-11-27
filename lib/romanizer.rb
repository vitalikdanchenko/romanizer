module Romanize
  letters = %w(M CM D CD C XC L XL X IX V IV I)
  values  = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  LETTERS = letters.zip values

  def romanize
    n = self
    raise ArgumentError, 'Numeral should be between 1 and 3999' if n < 1 || n > 3999
    LETTERS.map{|l,v| c, n = n.divmod v; l*c}.join ''
  end
end

class Fixnum
  include Romanize
end
