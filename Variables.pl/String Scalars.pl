# String Scalars
    Following example demonstrates the usage of various types of string scalars. Notice the difference between single quoted strings and double quoted strings –
        #!/usr/bin/perl

        $var = "This is string scalar!";
        $quote = 'I m inside single quote - $var';
        $double = "This is inside single quote - $var";
        
        $escape = "This example of escape -\tHello, World!";
        
        print "var = $var\n";
        print "quote = $quote\n";
        print "double = $double\n";
        print "escape = $escape\n";
        
    This will produce the following result −
        var = This is string scalar!
        quote = I m inside single quote - $var
        double = This is inside single quote - This is string scalar!
        escape = This example of escape - Hello, World
