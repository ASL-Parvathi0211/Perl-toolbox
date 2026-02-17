# V-Strings
    A literal of the form v1.20.300.4000 is parsed as a string composed of characters with the specified ordinals. This form is known as v-strings.
    A v-string provides an alternative and more readable way to construct strings, rather than use the somewhat less readable interpolation form "\x{1}\x{14}\x{12c}\x{fa0}".
    They are any literal that begins with a v and is followed by one or more dot-separated elements. For example –
        #!/usr/bin/perl
        
        $smile = v9786;
        $foo = v102.111.111;
        $martin = v77.97.114.116.105.110;
        
        print "smile = $smile\n";
        print "foo = $foo\n";
        print "martin = $martin\n";
        
    This will also produce the same result −
        smile = ☺
        foo = foo
        martin = Martin
        Wide character in print at main.pl line 7.
        