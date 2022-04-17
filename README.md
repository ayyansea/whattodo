# What To Do?

This is a simple CLI app that uses [boredapi](https://www.boredapi.com/) as a backend to provide activity ideas if you're bored. Written in Crystal as a tiny pet-project just to get to know the language, because it looked interesting to me. It's actually pretty good! The standard library is also very functional and easy to use.

# Dependencies

* crystal
* openssl-devel (required by HTTP::Client)
* ...probably something else but I don't remember

# Building and running

Just run 'make' and you'll have a binary in the build folder. To run without building:

    crystal run src/whattodo.cr

# Limitations

* Cannot run without internet (duh).
* Programmed and tested on Fedora 35, should probably work on other distros (or UNIX-like systems), but I'm not sure.

# Misc

Works really well with lolcat :)

    ./build/whattodo | lolcat -v 1 -h 1

# License

GPLv3.
