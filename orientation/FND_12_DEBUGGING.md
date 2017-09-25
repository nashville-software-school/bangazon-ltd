# Debugging Ruby or Rails

You might remember from the front end foundations that you can place a `debugger;` statement anywhere in your JavaScript code, and the browser will stop at that line of code when the page loads so that you can inspect the state of your application.

In Ruby, you will use [the debugger](https://ruby-doc.org/stdlib-2.3.0/libdoc/debug/rdoc/DEBUGGER__.html) to accomplish the same thing.

You can place this statement anywhere in your code where you want the code to pause, and start inspecting.

```ruby
require 'debug'
```

When the interpreter hits that line of code, the terminal session that is running the program will drop into the Ruby shell and you can start looking around. A simple example would be printing out values of variables.

```
$ redebug dogfood.rb
-> dog_name = "Fido"
(rdb:1) p food
Alpo
(rdb:1) p price
19.99
```

When you are done inspecting your code, you can exit the debugger and restart the program by typing in **run**

```
(rdb:1) continue
```
Also checkout out [Pry](http://pryrepl.org/).
