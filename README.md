# ruby_easywingui
A simple GUI system for ruby using the built in WIN32OLE methods.

To create a text box:
```
  require 'easywingui'
  
  msgbox("This is a message", "This is a title")
 ```
To create an input box:
```
  require 'easywingui'
  
  box = inputbox("This is a message", "This is a title")
  
  puts box
```
