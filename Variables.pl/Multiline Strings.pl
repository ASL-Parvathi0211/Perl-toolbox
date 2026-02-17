# Multiline Strings
    If you want to introduce multiline strings into your programs, you can use the standard single quotes as below –
        #!/usr/bin/perl
        
        $string = 'This is a multiline string';
        
        print "$string\n";
        
    This will produce the following result −
        This is a multiline string
        
    You can use "here" document syntax as well to store or print multilines as below –
        #!/usr/bin/perl

        print <<EOF;
        This is a multiline string EOF
        
    This will also produce the same result –
        This is a multiline string
