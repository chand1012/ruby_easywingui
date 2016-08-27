require 'win32ole'
require 'os'

if OS.windows? == false then
  puts "This is a Windows only gem!"
  raise "OS not supported."
end

def inputbox(message, title="Message from #{__FILE__}") #nil if canceled
  vb_msg = %Q| "#{message.gsub("\n",'"& vbcrlf &"')}"|
  vb_msg.gsub!( "\t", '"& vbtab &"' )
  vb_msg.gsub!( '&""&','&' )
  vb_title = %Q|"#{title}"|
  sc = WIN32OLE.new( "ScriptControl" )
  sc.language = "VBScript"
  sc.eval(%Q|Inputbox(#{vb_msg}, #{vb_title})|)
end
def msgbox(message, title="Input from #{__FILE__}")
  shell = WIN32OLE.new('WScript.Shell')
  shell.popup(message, 0, title)
end
