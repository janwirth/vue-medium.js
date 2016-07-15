# vue-medium.js
A Vue.js Directive for Medium.js

## Installation
> Note: you need the patched medium.js unless https://github.com/jakiestfu/Medium.js/issues/82 is resolved

```sh
# curl the directive
curl https://raw.githubusercontent.com/FranzSkuffka/vue-medium.js/master/vue-medium.coffee > mediumDirective.coffee

# curl patched medium.js
curl https://raw.githubusercontent.com/FranzSkuffka/vue-medium.js/master/medium.patched.js > medium.patched.js

# if you are using vanilla js
coffee -c mediumDirective.coffee
```


## Usage
Currently only as CommonJS module
```coffee
# myComponent.coffee
# Medium should be available globally (just link the medium.patched.js in your index.html)
module.exports =
  directives:
    medium: require './mediumDirective'
```
```html
<div v-medium='text' mode='rich'>Hello World</div>
```
