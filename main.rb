def bubble_sort(number_array)
  loop_counter = number_array.length - 1
  until loop_counter == 0 do
    0...loop_counter.times do |first_number|
      second_number = first_number + 1
      unless number_array[first_number] > number_array[second_number]
        next
      else
        number_array[first_number], number_array[second_number] = number_array[second_number], number_array[first_number]
      end
    end
    loop_counter -= 1
  end
  return number_array
end

puts "Input your array below to get it sorted:"
input_array = gets.split(/[\s,]+/)
input_array.map! {|element| element.to_i}
print bubble_sort(input_array)