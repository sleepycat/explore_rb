# ExploreRb

This is a gem that aims to add a little "discoverability" to IRB. It does this
by adding methods for showing classes, objects and so on in hopes that this
will create a few teachable moments and enable beginners to explore the
mysterious world that IRB represents.

## Installation

Install at the command line:

    $ gem install explore_rb

## Usage

    $ irb
    $ require 'explore_rb'

### Listing Classes

List the classes that are currently defined by typing:

    $ classes

### Listing Objects

A hash containing the class and the number of objects that exist in memory is returned by typing:

    $ objects

### Retrieving Objects

To retrieve all of the objects of a given type use 'get_objects':

    $ class Book; end
    $ Book.new
    $ get_objects(Book)
    $ => [<#Book>]

### Listing installed gems

As you might expect, list gems with:

    $ gems

### Visualizing code execution

An SVG file showing the various function calls will be written to the desktop
when 'draw_this' is called with a block.  This functionality is provided by the
Traceur gem. Usage looks like this:

    $ draw_this do
    $   # some code that has some method calls
    $ end

Be conservative with what you put inside that block. Its really easy to end up
with an SVG file that is so big that no application can open it.  The lines and
fonts are as small as possible since there can be a tonne of stuff written in
there.  Consequently Inkscape is probably the best choice to view the files
because you can zoom in lots.

### Listing variables

The greeting message displayed when this library is required mentions
'local_variables'. This is an existing Ruby method, and not one supplied by
this library but it was worth pointing out since fits in with what this library
is trying to accomplish.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

(The MIT License)

Copyright (c) 2013 Mike Williamson

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

