var fs = require("fs")
var functionExtractor = require("./index")

var source = fs.readFileSync("./sample.js", "utf8")

console.log (functionExtractor.parse(source))
