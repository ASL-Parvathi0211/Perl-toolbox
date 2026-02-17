# Scalar Operations
    You will see a detail of various operators available in Perl in a separate chapter, but here we are going to list down few numeric and string operations.
        #!/usr/bin/perl
        $str = "hello" . "world";      # Concatenates strings.
        $num = 5 + 10;                 # adds two numbers.
        $mul = 4 * 5;                  # multiplies two numbers.
        $mix = $str . $num;            # concatenates string and number.
        
        print "str = $str\n";
        print "num = $num\n";
        print "mul = $mul\n";
        print "mix = $mix\n";
        
    This will produce the following result –
    str = helloworld
    num = 15
    mul = 20
    mix = helloworld15
