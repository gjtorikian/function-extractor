Provides an array of objects listing the names and types of functions found in a Javascript file.

Based on [fn-extractor](https://github.com/goatslacker/fn-extractor), except this one works with the latest Esprima, catches more corner cases, reports errors, and covers Coffeescript.

Used by [Panino](https://github.com/c9/panino-docs) and [Biscotto](https://github.com/gjtorikian/biscotto) to report doc coverage.

# Installation

```bash
npm install function-extractor
```

# Usage

You can use this module in two ways. If you don't already have an [Esprima](https://github.com/ariya/esprima) AST of your code, do this:

```javascript
var fs = require("fs");
var functionExtractor = require("function-extractor");

var source = fs.readFileSync("./sample.js", "utf8")

var functions = functionExtractor.parse(source);
```

where `source` is the text read from your Javascript file. You can also pass `{coffeescript: true}` if your source file is a Coffeescript file.

Otherwise, if you've already parsed the file, do this:

```javascript
var functionExtractor = require("function-extractor");

var functions = functionExtractor.interpret(ast);
```

where `ast` is the `Esprima.parse()` result. Note that you **must** pass the `range` and `loc` options to Esprima.