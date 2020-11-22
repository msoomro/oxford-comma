def oxford_comma(array)
    if array.size <= 1
        return array.join
    elsif array.size == 2
        return array.join(" and ")
    end

    new_string = array.shift.to_s
    last_word = ", and " << array.pop.to_s

    array.each do |word|
        new_string << ", #{word}"
    end
    new_string << last_word
end