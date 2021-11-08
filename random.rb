def main
  guess upper:ARGV[0]&.to_i, tries: ARGV[1]&.to_i
end
UPPER = 100
TRİES = 5
def main1
  upper = UPPER
  tries = TRİES
  number = rand(upper) + 1
  try = 0

  loop do 
    

    if try >= tries
      puts 'Üzgünüm Deneme Hakkınız Bitti'
      puts "Tahmin Etmeniz Gereken Sayı #{number}'idi"
      break
    end
    print "1 ile #{upper} arasında bir sayı tahmin edin[deneme#{try}/hakkınız#{tries}]: "
    guess = gets.chomp.to_i

    try +=1
    if guess == number
      puts 'Harika, Doğru Tahmin!!! '
      break
    elsif guess > number
      puts 'Daha Küçük'
    else
      puts 'Daha Büyük'
    end
  end
  puts 'Yeni Tahminlerde Görüşmek Üzere'
end