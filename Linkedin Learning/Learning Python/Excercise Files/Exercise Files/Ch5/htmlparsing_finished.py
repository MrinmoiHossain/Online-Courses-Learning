# 
# Example file for parsing and processing HTML
#

# import the HTMLParser module
# in Python 3 you need to import from html.parser
from html.parser import HTMLParser

metacount = 0;

# create a subclass of HTMLParser and override the handler methods
class MyHTMLParser(HTMLParser):
  # function to handle an opening tag in the doc
  # this will be called when the closing ">" of the tag is reached
  def handle_starttag(self, tag, attrs):
    global metacount
    if tag == "meta":
      metacount += 1

    print ("Encountered a start tag:", tag)
    pos = self.getpos() # returns a tuple indication line and character
    print ("\tAt line: ", pos[0], " position ", pos[1])

    if attrs.__len__() > 0:
      print ("\tAttributes:")
      for a in attrs:
        print ("\t", a[0],"=",a[1])
      
  # function to handle the ending tag
  def handle_endtag(self, tag):
    print ("Encountered an end tag:", tag)
    pos = self.getpos()
    print ("\tAt line: ", pos[0], " position ", pos[1])
    
  # function to handle character and text data (tag contents)
  def handle_data(self, data):
    if (data.isspace()):
      return
    print ("Encountered some text data:", data)
    pos = self.getpos()
    print ("\tAt line: ", pos[0], " position ", pos[1])
  
  # function to handle the processing of HTML comments
  def handle_comment(self, data):
    print ("Encountered comment:", data)
    pos = self.getpos()
    print ("\tAt line: ", pos[0], " position ", pos[1])

def main():
  # instantiate the parser and feed it some HTML
  parser = MyHTMLParser()
    
  # open the sample HTML file and read it
  f = open("samplehtml.html")
  if f.mode == "r":
    contents = f.read() # read the entire file
    parser.feed(contents)
  
  print ("%d meta tags encountered" % metacount)

if __name__ == "__main__":
  main();
  