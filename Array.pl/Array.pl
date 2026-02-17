# Perl Array
    A Perl array variable stores an ordered list of scalar values.
    To refer a single element of Perl array, variable name will be preceded with dollar ($) sign followed by index of element in the square bracket.
    Syntax:
        @arrayName = (element1, element2, element3..);

    # Perl Simple Array Example
        This is a simple example to use Perl array.
            #!/usr/bin/perl
            
            @num = (2015, 2016, 2017);
            @string = ("One", "Two", "Three");
            print "$num[0]\n";
            print "$num[1]\n";
            print "$num[2]\n";
            print "$string[0]\n";
            print "$string[1]\n";
            print "$string[2]\n";
            
            Output:
                2015
                2016
                2017
                One
                Two
                Three
        In the above example, we have defined two arrays, one with number element and other with string element. Both arrays are printed with their index elements.

    # Perl Array Accessing
        To access a single element of a Perl array, use ($) sign before variable name. You can assume that $ sign represents singular value and @ sign represents plural values.
        Variable name will be followed by square brackets with index number inside it. Indexing will start with 0 from left side and with -1 from right side.
            @months = qw/Jan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec/;
            print "$months[0]\n";
            print "$months[1]\n";
            print "$months[7]\n";
            print "$months[9]\n";
            print "$months[6]\n";
            print "$months[-3]\n";
            
            Output:
                Jan
                Feb
                Aug
                Oct
                Jul
                Oct

    # Perl Array Size or Length
        The size of an array is determined with scalar context on the array. The returned value will be always one greater than the largest index. In short the size of an array will be ($#array + 1). Here, $#array is the maximum index of the array.
            @array = (you, me, us);
            $array[5] = 4;
            $size = @array;
            $index_max = $#array;
            print "Size: $size\n";
            print "Maximum Index: $index_max\n";
            
            Output:
                Size: 6
                Maximum Index: 5
        In the output, there are only three elements containing information, but the give array has total 5 elements.
