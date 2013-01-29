fs = require("fs")
functionExtractor = require("./index")

source = fs.readFileSync("./sample.coffee", "utf8")

console.log (functionExtractor.parse(source, {coffeescript: true}))