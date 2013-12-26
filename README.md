# Stormpath AngularJS project

This is a skill demonstration for [Stormpath](http://www.stormpath.com/) Company.

View [Demo online](http://syrusakbary.github.io/stormpath-angular/)

## Technology

This project is using: [CoffeeScript](http://coffeescript.org/), [Stylus](http://learnboost.github.io/stylus/), [Jade](http://jade-lang.com) as main tools and finally [Grunt](http://gruntjs.com/) for improving develoment flow.

### Why this technologies?

I decided to use those because my productivity improves significally than writing plain JS, CSS or HTML5 (also called **syntactic sugar**)

## Differences 

The main additions/modifications with the provided [index.html](https://github.com/SyrusAkbary/stormpath-angular/tree/master/build/index.html) file are:

- Title tag added on head
- Link to style added on head
- Removed Hello World! phrase
- Added ng-app and stormpath-form directives

## Comments

For such a simple job, **I would never choose AngularJS**. I think it add complexity instead of simplifying.
Less code = More mantainable code (almost always)

### Input focus event

Instead of using js for focus handling (like onclick/onfocus, or whatever), I decided to use just CSS :focus event. It is more simple, effective, and fast than any js middleware.

### Form validation

I suppose that the user is entering with a *modern browser* that support `input[type="email"]`, `input[required]` HTML5 elements, and then automatic email and required field validation.

If we want to assure compatibility, we could use any [Polyfill](https://en.wikipedia.org/wiki/Polyfill) when the browser don't support the feature. Here you can find a list of [polyfills for Web Forms](https://github.com/Modernizr/Modernizr/wiki/HTML5-Cross-Browser-Polyfills#web-forms)

### Angular Directives

I would use [AngularJS ngRoute](http://docs.angularjs.org/api/ngRoute), but in 1.2.X ngRoute is on a [separate module](https://ajax.googleapis.com/ajax/libs/angularjs/1.2.2/angular-route.min.js).
So, as I don't want to add external resources that you didn't provide, I'd finally choose AngularJS directives.

Other option could be using `<ng-include>` directive for including the partial template, but as you said, I have to touch the index.html file as less as possible.

### Caveats

- Adding a directive is less code than adding ng-include and ng-controller, but it adds a **unnecesary overhead** in the code structure.
Did you really want/mean this?
- This webapp cannot be run locally `file://` because it loads some templates via XHR.


## Develop/Build

For build this webapp you only have to run `npm install` for installing the dev dependencies and then `grunt` for process all the coffee/stylus/jade files.

If you want to autocompile all the external files while you are developing, you only have to run `grunt watch`.

The processed results will be in the [build directory](https://github.com/SyrusAkbary/stormpath-angular/tree/master/build/).
