def englishNumber number
  if number < 0
    return 'please enter a number 0 or greater'
  end
  if number == 0
    return 'zero'
  end

numString = ''
  
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  left = number
  write = left / 100
  left = left - write*100
  
  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end
  
  write = left/ 10
  left = left - write*10
  
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    numString = numString + onesPlace[write-1]
  end
  
numString
end

    
puts englishNumber( 1000)
puts englishNumber(10000)
puts englishNumber( 9999)
puts englishNumber(99999)