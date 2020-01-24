// 28. stStr()


  // ## problem - return the index of the first occurancce of a substr or -1 if the substring is not part of the str

  // input - two strings
  //   - first is the "haystack"
  //   - second is teh "needle"

  //   ouput
  //   - index of where the needle starts
  //     - -1 if needle does not appear
  //     - 0 if the needle is empty


  // ## examples

  // strStr("aaaaaa", "") // returns 0
  // strStr("aaaaa", "bba") // return 1-
  // strStr("hello", "ll") // return 2
  // strStr("llello", "ll") // return 0

  // ## datastructure
  //  - don't need to change from input string

  // ## algorithm

  // if needle doesn't exist - return 0

  // for each index in the haystack
  //   - if the next slice of haystack === needle
  //     - return index
  //     - next slice is slice(index, index + needle.length)
  //   - at end of loop - return 0


  // ## Knuth Morris Pratt Algorithm KMP algorithm

  // KMP psuedo code

  // input
  //  - string to be searched
  //  - pattern - to be sought

  // output - a number which signifies:
  // - the index if there is a match
  // - 0 if either inptu is invalid
  // - -1 if  there is not match

  // Variables to be used

  // - j - the position of the current character in the string
  // - k - the position of the current char in the pattern
  // - T - the table

  // for (let j = 0; j <)



  // My Original solution
  const strStr = (string, searchString) =>  {
    const searchStringLength = searchString.length
    if (searchStringLength === 0) { return 0 }

    for (let i = 0; i <= string.length; i += 1 ) {
      if (i + searchStringLength > string.length) { return -1 } // break if impossible for the searchString to exist in remaining
      if (string.slice(i, i + searchStringLength ) === searchString)  { return i }
    }

    return -1
  }

  // Nancy solution - in Ruby


  // KMP solution
  const strStr = (string, pattern) => {
    if (pattern === "") { return 0 }

    let j = 0;
    let k = 0;
    let table = kmpTable(pattern)
    while (j < string.length ) {
        if (pattern[k] === string[j]) {
          j = j + 1
          k = k + 1

          if  (k === pattern.length) {
            return j - k
          }
        } else {
          k = table[k]
          if (k < 0) {
            j = j + 1
            k = k + 1
          }
        }
    }
    return -1
  }

  const kmpTable = (pattern) => {
    let i = 1;
    let j = 0

    let table = [-1]

    while (i < pattern.length) {
      if (pattern[i] === pattern[j]) {
        table[i] = table[j]
      } else {
          table[i] = j
          j = table[j]
          while (j >= 0 && pattern[i] != pattern[j]) {
            j = table[j]
          }

      }
      i = i + 1
      j = j + 1
    }
    return table;
  }



  // Rabin-Karp String Matching Algorithm - implemented by Melissa

  const ALPHABET_VALUES = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5,
    f: 6,
    g: 7,
    h: 8,
    i: 9,
    j: 10,
    k: 11,
    l: 12,
    m: 13,
    n: 14,
    o: 15,
    p: 16,
    q: 17,
    r: 18,
    s: 19,
    t: 20,
    u: 21,
    v: 22,
    w: 23,
    x: 24,
    y: 25,
    z: 26,
  };
  ​
  const HASH_VALUE = 26;
  ​
  var strStr = function (haystack, needle) {
    const SEARCH_STRING_LENGTH = needle.length;
    if (SEARCH_STRING_LENGTH === 0) return 0;
  ​
    const SEARCH_HASH_VALUE = calculateHashValue(needle);
  ​
    for (let i = 0; i < haystack.length; i += 1) {
      if (i > haystack.length - SEARCH_STRING_LENGTH) return -1;
  ​
      subString = haystack.substring(i, SEARCH_STRING_LENGTH + i);
      let subStringHashValue = calculateHashValue(subString);
      if (subStringHashValue === SEARCH_HASH_VALUE &&
        equivalentCharacters(subString, needle)) {
        return i;
      }
    }
    return -1;
  };
  ​
  function calculateHashValue(string) {
    return string.split('').reverse().map((char, idx) => {
      return (ALPHABET_VALUES[char] * (HASH_VALUE ** idx));
    }).reduce((sum, current) => sum + current);
  }
  ​
  function equivalentCharacters(subString, searchString) {
    for (let i = 0; i < subString.length; i += 1) {
      if (subString[i] !== searchString[i]) return false;
    }
    return true;
  }

