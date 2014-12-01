class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(args={})
    @real = args[:real].to_f || 0.0
    @imaginary = args[:imaginary].to_f || 0.0
  end

  def modulus

  end

  def conjugate

  end

  def to_s
    "#{@real} #{@imaginary}"
  end

end

def add_complex(a,b)
  real = a.real + b.real
  imaginary = a.imaginary + b.imaginary
  ComplexNumber.new({real: real, imaginary: imaginary})
end

def subtract_complex (a,b)
  real = a.real - b.real
  imaginary = a.imaginary - b.imaginary
  ComplexNumber.new({real: real, imaginary: imaginary})
end

def multiply_complex(a,b)
 first = a.real * b.real
 outter = a.real * b.imaginary
 inner = b.real * a.imaginary
 last = a.imaginary * b.imaginary

 real = last < 0 ? first + last.abs : first + last
 imaginary = outter + inner
 ComplexNumber.new({real: real, imaginary: imaginary})
end

a = ComplexNumber.new({:real => 1, :imaginary => 3})
b = ComplexNumber.new({:real => 3, :imaginary => -2})