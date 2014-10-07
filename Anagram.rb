def is_anagram?(string1, string2)
  elems1 = string1.downcase.split("").sort
  elems1.delete(" ")
  elems2 = string2.downcase.split("").sort
  elems2.delete(" ")
  elems1.eql?(elems2) ? true : false
end