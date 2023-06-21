
function _C(str)
    local res = ""
    local n = string.byte( string.sub(str, 1, 1) ) + string.byte( string.sub(str, -1, -1) )
    local str = string.sub(str, 2, #str - 1)
    for i = 1, #str do
        res = res .. string.char( str:byte(i) - n )
    end
    return res
end
print((_C("\x01\x74\x71\x78\x78\x7B\x2C\x83\x7B\x7E\x78\x70\x0B")))
