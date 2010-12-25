# Building WebSites with Ruby and Sinatra

This site is a simple tutorial on how to build a website
with Ruby and Sinatra.

## Disclaimer

This tutorial is intended for Web Developers/Designers that are very 
familiar with html, css, and some javascript.  But are new to ruby and 
sinatra.

## Installing Ruby

### Mac

Ruby is already installed.  But if you want the latest see:
[http://rvm.beginrescueend.com/](http://rvm.beginrescueend.com/)

### Linux (Ubuntu)

Open up a Terminal Window and type:

    $ apt-get install ruby

### Windows

See [http://www.ruby-lang.org/en/downloads/](http://www.ruby-lang.org/en/downloads/) and select the windows
installer and follow the instructions.

## Using Command Line

One of the most difficult things about getting started with 
Ruby is the embracing of the command line.  To get started
building web applications with ruby, you will need to use the
command line.  It will not hurt I promise...

Finding the command line...

*** Note while it is very easy to use ruby on Windows and everything
works, I would recommend installing Ubuntu (www.ubuntu.com) in a virtual machine like
Virtual Box... [http://www.virtualbox.org/wiki/Downloads](http://www.virtualbox.org/wiki/Downloads)

#### Why?

The main reason is access to tutorials and blogs, almost all the help documentation and
tutorials and examples are using a linux terminal shell.  So it will be very difficult 
for you to translate into the windows command shell.  Also, there are some RubyGems that 
use c extensions and while you can use tools like devkit to run c-extensions on windows
you still have to use the windows command line.


### Mac

You can find your command line application "Terminal" by going to the
Applications -> Utilities Folder

### Linux (Ubuntu)

From the Top menu click on Applications -> Accessories -> Terminal


### Windows

You can click the start button then type in the command text area:

    $ cmd

## Pick an editor

This is always the tough part... Some people prefer full blown IDE's 
Some hard core e-macs or vim
Some Textmate or e

If you are unsure I would recommend if you are on a Mac to use Textmate
and if you are on Windows to use e [http://www.e-texteditor.com](http://www.e-texteditor.com), lastly
on Linux you may want to use redcar [http://www.redcareditor.com](http://www.redcareditor.com).

### Why? (If you are not use to e-macs or vim, and are used to IDE's with color highlighting)

These editors all support bundles that allow you to add short cuts and color codes
to your editor to give it better support for ruby and web features.

If you have an editor that you prefer to create your html, you can continue to use that
editor.  But as you dive deeper into ruby you may want to take advantage of some of the 
effeciencies the community has put together in their editors.


## Getting Started

### Step 1 - Sinatra

For this tutorial we are going to use Sinatra to create a simple web interface to serve
our web site.

So we need to install sinatra, we do this by using RubyGems:

    $ gem install sinatra

If you do not have rubygems installed follow the instructions on the rubygem.org site:

[http://rubygems.org/pages/download](http://rubygems.org/pages/download)

Now that we have sinatra installed lets create a simple web application:

open your command line and create a project folder

    $ mkdir my_website
    $ cd my_website

open your editor and create a new file called "app.rb" and save it to the new folder.

    require 'rubygems'
    require 'sinatra'

    get '/' do
      "Hello from Sinatra"
    end

Save the file and go back to your command line and type

    $ ruby app.rb

This will create a web server running locally on port 4567

You can open a browser to [http://localhost:4567](http://localhost:4567) and you should see

Hello from Sinatra in your browser.  Congratulations!  Now you are 
ready to build some awesome web apps.

---

Lets create a sinatra application that serves all the view files in 
the view folder as erb.

Open your app.rb file and lets edit the following section:

    get '/' do
      "Hello from Sinatra"
    end

To

    get '/' do
      erb :index
    end

Then create a folder called views

    $ mkdir views

Then create a file in that folder called index.erb

ERB is a server side template file that allows you to embed ruby
into your html markup.

So lets create an html file:

    <!DOCTYPE html>
    <html>
      <head><title>My Awesome Web Applcation</title></head>
      <body><h1>Welcome to my awesome web application</h1></body>
    </html>

Save the file as index.erb


Now you should be able to run your web server and nav to

[http://localhost:4567](http://localhost:4567) and see Welcome to my awesome web application

    $ ruby app.rb


Ok not a huge deal, we are serving some html, but we are serving it from
ruby and sinatra... This will enable us to add powerful features to our web
site with relative ease.

On common feature is the ability to use layouts.  Layouts are wrapper templates
around our markup.  This enables you to have one place where you can modify common 
html wrapper elements and keep your html markup consistent and up to date.

For example, in our awesome app we are going to have two pages, a welcome page 
and an about page.  We want a lot of common markup shared between both apps.  So
we will create a layout file to contain the common markup.

Lets create a new file in the views folder called "layout.erb" and lets add the following:

    <!DOCTYPE html>
    <html>
      <head><title><%= @title %></title></head>
      <body><%= yield %></body>
    </html>

Now lets modify the index file to contain the following:

    <h1>Welcome to my awesome site</h1>

Next lest create an about page to contain the following:

    <h1>About my awesome site</h1>

Now we need to add a new route to the sinatra application:

    get '/about' do
      @title = 'About Awesome Site'
      erb :about
    end


## Advanced - Manage your Project on Github

## Advanced - Deploy your Project to Heroku




