# Perl Comments
    Comments are a necessity for a developer of any language. It is a good habit to comment in your code. They don't take part in program execution. They just provide us an explanation and hints about our coding. With the help of comments, one can easily understand the code after a long time. Even other people will also be able to understand someone else work with the help of comments. Like other languages, we can also comment in Perl language.
    There are two ways to comment in Perl:
    
    1. Perl Single Line Comment
    Perl single line comment starts with a hash sign (#).
        $x = 10;
        print"$x\n"; #Here, x is a variable
        
        Output:
            10
            Perl Multi Line Comment
            
    2. Perl Multi-Line Comment 
        Perl multi line comment starts with (=begin) statement and ends with (=cut) statement.
        $x = 20;
        print"$x\n";
        =begin
        Let's declare and
        print variable in Perl.
        =cut
        
        Output:
        20
        