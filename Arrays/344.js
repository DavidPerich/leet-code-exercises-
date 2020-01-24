// Reverse String javascript

const reverse = (array) => {
  let start = 0;
  let last = array.length - 1;

  while (start <= last) {
    [array[start], array[last]] = [array[last], array[start]]
    start += 1
    last -= 1
    console.log(array)

  }
  return array
}

var input = ["h","e","l","l","o"]
var output =  ["o","l","l","e","h"]

 console.log(reverse(input) == output)