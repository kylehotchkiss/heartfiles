 Web Servers
==========

I have always been annoyed with the default configurations that ship with web servers. I like to have my web server software set up so specifically that I just rewrite it. Here's what I aim for:

- Being able to create a directory to create a new (sub)domain. Having to do this in a text editor is annoying.
- Along with the above, keeping everything close together for easier remote access. (Logs, error files, etc.)
- Keeping it as simple as the software allows by ommiting performance parameters where good ones exist.
- Avoiding modules unless they are absolutely needed.
- Keeping configuration directives (somewhat) organized.
- Timeless configuration where possible. 
- Compatiblity with Debian's module managers.
- Files that keep things running well enough to show them off.

With the Lighttpd configuration, you can easily make a `/srv` directory, throw in all your domain names and a `_default` directory and be set. With Apache, you can do the same, but everything that needs
to point to `_default` needs a symbolic link unfortunatly. If you make the symbolic links anyways, the configuration should work cleanly between the two, given that you've enabled the same modules. I use 
the `_default` for a Wordpress install that is used for many of my sites (needs config.php fix first). The default directory can really be anything though... but take advantage of it!

The performance of the Lighttpd configuration makes me much more proud than the Apache one. Of course, lighttpd is not updated enough for me to recommend it as a production server anymore. As a toy or for 
personal sites, it does such a great job without the overhead. I love fastcgi too. With PHP, always use xcache and with Wordpress sites be sure to use a filesystem based cached system to 
keep everything running smoothly. 

For static resources, I'd rather just throw things on S3 these days because it's free for me. These server configurations won't really do it for high-volume static resource servers or video serving. You'll
need to configure more advanced runtime paramters for that and consider a strongly minimalistic approach towards server resource managment.

Hope you enjoy!

## 2014 Update

Works great with [DNSMasq](http://passingcuriosity.com/2013/dnsmasq-dev-osx/)
