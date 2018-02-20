for i = 1, 100 do 
    local temp = ""
    if i % 3 == 0 then temp = temp .. "fizz" end
    if i % 5 == 0 then temp = temp .. "buzz" end
    if string.len(temp) == 0 then temp = i end
    print(temp)
end