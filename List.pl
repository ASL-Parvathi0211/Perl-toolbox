# Perl List
    A Perl list is a sequence of scalar values. You use parenthesis and comma operators to construct a list. Each value is the list is called list element. List elements are indexed and ordered. You can refer to each element by its position.
    
    Simple Perl list
    The following example defines some simple lists:
        ();
        (10,20,30);
        ("this", "is", "a","list");
    
    In the example above:
        • The first list () is an empty list.
        • The second list (10,20,30) is a list of integers.
        • The third list ("this", "is", "a","list") is a list of strings.
        
    Each element in the list is separated by a comma (,). In the previous tutorials, we used the printoperator many times to display a number or a string. The print operator is a list operator. So let’s display our lists above with the print operator to see how it works:
        #!/usr/bin/perl
        use warnings;
        use strict;
        print(()); # display nothing
        print("\n");
        print(10,20,30); # display 10,20,30
        print("\n");
        print("this", "is", "a","list"); # display: thisisalist
        print("\n");
    We passed several lists to the print operator to display their elements. All the lists that we have seen so far contain an element with the same data type. These lists are called simple lists.

    # Complex Perl list
        A Perl list may contain elements that have different data types. This kind of list called a complex list. Let’s take a look at the following example:
        #!/usr/bin/perl
        use warnings;
        use strict;
        my $x = 10;
        my $s = "a string";
        print("complex list", $x , $s ,"\n");
    
    # Using qw function
        Perl provides the qw() function that allows you to get a list by extracting words out of a string using the space as a delimiter. The qw stands for quote word. Two lists below are the same:
            #!/usr/bin/perl
            use warnings;
            use strict;
            print('red','green','blue'); # redgreenblue
            print("\n");
            print(qw(red green blue)); # redgreenblue
            print("\n");
        
        Similar to the q/ and q// operators, you can use any non-alphanumeric character as a delimiter. The following lists are the same:
            qw\this is a list\;
            qw{this is a list};
            qw[this is a list];
        
        Flattening list
            If you put a list, called internal list, inside another list, Perl automatically flattens the internal list. The following lists are the same:
                (2,3,4,(5,6))
                (2,3,4,5,6)
                ((2,3,4),5,6)

       Accessing list element
            You can access elements of a list by using the zero-based index. To access the nth element, you put (n – 1) index inside square brackets.
            Let’s take a look at the following example:
                #!/usr/bin/perl
                use warnings;
                use strict;
                print(
                    (1,2,3)[0] # 1 first element
                    );
                    print "\n"; # new line
                    print(
                        (1,2,3)[2] # 3 third element
                        );
                        print "\n"; # new line
            To get multiple elements of a list at a time, you can put a list inside square brackets. This feature is called list slice. You can omit the parenthesis of the list inside the square bracket.
                (1,2,3,4,5)[0,2,3] # (1,3,4)
            The above code returns a list of three elements (1, 3, 4).Ranges
            Perl allows you to build a list based on a range of numbers or characters e.g., list of numbers from 1 to 100, list of characters from a to z. The following example defines two lists:
                (1..100)
                (a..z)

    # Manipulating Lists
        Perl provides several built-in functions for list manipulation. Three useful ones are:
        shift LIST: Returns the first item of LIST, and moves the remaining items down, reducing the size of LIST by 1.
        unshift ARRAY, LIST: The opposite of shift. Puts the items in LIST at the beginning of ARRAY, moving the original contents up by the required amount.
        push ARRAY, LIST: Similar to unshift, but adds the values in LIST to the end of ARRAY.

        # Iterating over Lists
        foreach:
        The foreach loop performs a simple iteration over all the elements of a list
        Eg:
            foreach $item (list)
            {
                ……………
                }
                The block is executed repeatedly with the variables $item taking each value from the list in turn. The variable can be omitted, in which case $_ will be used.The natural Perl idiom for manipulating all items in an array is ; foreach (@array)
                {
                    ……..#process $_
                    }

