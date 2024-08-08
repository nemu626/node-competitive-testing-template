"use strict";
const MAX_SAFE_INTEGER = 9007199254740991;
// Utility functions
/**
 * @param {string} line - input line to parse.
 * @returns {number[]} The parsed number values.
 */
function readLineAsNumbers(line) {
    return line.split(" ").map(s => Number(s));
}


const main = arg => {
    //Write your code here.
    const inputLines = arg.trim().split("\n");

    // console.log(answerLines.join("\n"));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));  
