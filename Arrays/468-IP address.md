# Problem:

Determine whether a given string is a valid IPV4 address or IPv6 address or neither.

Input - a string. Output - a string
  - either "IPv6, IPv4, or neither
## example
Input: "172.16.254.1"

Output: "IPv4"

May assume there is no extra space or special characters in teh string

## IP4 validity criteria
- no leading zeros
- four decimal numbers ranging from 0 to 255
  - so min is 0
  - max is 255
### IP4 examples

- 172.16.254.1 - valid
- 0.0.0.0 valid

Invalid
- 172.16.254.01 - cannot have leading zeros
- 255.255.255 - missing the forth number
- .... - missing all numbers
- 256.16.254.1 - numbers too high

## IPv6 Validity criteria

- eight groups of four hexadecimcal digits - each group representing 16 bits
  - 16 symbols - 0 - 9 and A - F
- each group seperated by `:` colon. So 7 colon seperators
- capitalisation doesn't matter for letters
- Can omit leading zeros so there won't always be four digits in each group
- if a group contains all 0's you cannot omit all the leading zeros to have an empty group. - 2001:0db8:85a3::8A2E:0370:7334 is invalid.

### IPv6 examples
Valid
2001:0db8:85a3:0000:0000:8a2e:0370:7334
2001:db8:85a3:0:0:8A2E:0370:7334 - same address as above except omitted leading zeros and capitalised some characters

Invalid
12001:0db8:85a3:0000:0000:8a2e:0370:7334 - extra number in the first group
02001:0db8:85a3:0000:0000:8a2e:0370:7334 - extra leading zero in first group - checks whether
Z001:0db8:85a3:0000:0000:8a2e:0370:7334  - Z character in string is outside of A - F


### Algorithm

isValidIPAddress(str) {
  if (isValidIPv4(str)) { return "IPv4" }
  if (isValidIPv6(str)) { return "IPv6" }
  return "Neither"
}

const isValidIPv4 = (str) => {
  split by "."
    - if length does NOT equal 4 - then return false
  loop through each strNum
    - if the first character in the strNumber is a 0 -  return false
    - if the number is NOT between 0 and 255 inclusive - return false
  - if all those conditions are met return true
}

const isValidIPv6(str) {
  split by :
    - if length not equal to 8 then return false
  loop through each group
    - if length not between 1 - 4 chars then return false
    - convert each char to lowercase
    - If it matches anything other than 0-9A-F return false
        - this should be insneitive to capitalisation
    -
}

(2L) + ( G * (2GL))
Drop constants
