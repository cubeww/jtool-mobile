/// @base32StringToInt(str)
/// @desc Converts a 13-character base32 string to a float
/// @arg str
var str = argument0;

return decode_real_double(padStringLeft(dec_to_bin(base32StringToInt(str)), 64, "0"));