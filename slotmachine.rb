#Written March 1, 2016

puts "Welcome to Jesse's Slot Machine"


balance = 1000

until balance == 0

def pull
    puts ''
    puts 'Type "pull" to play'
    print '>'
    @pull = gets.chomp.downcase.to_s
    until @pull == 'pull'
        puts 'Type "pull" to play'
        print '>'
        @pull = gets.chomp.downcase.to_s
    end
end

self.pull

puts ''
puts ''

slots_a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
slots_b = [1, 2, 3, 4, 5, 6, 7, 8, 9]
slots_c = [1, 2, 3, 4, 5, 6, 7, 8, 9]

chaching = []
chaching.push(slots_a.sample)
chaching.push(slots_b.sample)
chaching.push(slots_c.sample)

sleep(1)
print chaching[0].to_s + ' '
sleep(1)
print chaching[1].to_s + ' '
sleep(1)
print chaching[2].to_s + ' '

if chaching.join.to_i % 111 == 7
    puts 'You win!'
    balance += 500
elsif
    chaching.join.to_i % 111 == 0
    puts 'You win!'
    balance += 100
else
    puts 'You lose'
    balance -= 50
end

puts ''
puts 'Balance: ' + balance.to_s

end
