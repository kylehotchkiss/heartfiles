## Web Servers

I have always been annoyed with the default configurations that ship with web servers. I like to have my web server software set up so specifically that I just rewrite it. Here's what I aim for:

- Being able to create a directory to create a new (sub)domain. Having to do this in a text editor is annoying.
- Along with the above, keeping everything close together for easier remote access. (Logs, error files, etc.)
- Keeping it as simple as the software allows by ommiting performance parameters where good ones exist.
- Avoiding modules unless they are absolutely needed.
- Keeping configuration directives (somewhat) organized.
- Timeless configuration where possible. 
- Compatiblity with Debian's module managers.
- Files that keep things running well enough to show them off.

Of course, the apache one is a little older and runs as a site confitguration rather than a complete one at the moment. Hope these can help / inspire you!
