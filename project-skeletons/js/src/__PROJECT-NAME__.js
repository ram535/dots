import 'core-js';

function countWords(text) {
  if (text === "")
    return 0;
  // The g in the regular expression (short for global) says to search the whole string
  // rather than just find the first occurrence. This matches '\s' empty space.
  // if the regex does not find a match, it return null.
  // null is false. So the "OR" returns an empty array.
  return 1 + (text.match(/\s/g) || []).length;
}

module.exports = countWords;
