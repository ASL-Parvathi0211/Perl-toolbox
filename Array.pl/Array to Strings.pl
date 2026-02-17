# Perl Arrays to Strings, join()
    The join() function is used to combine arrays to make a string. It combines the separate arrays into one string and returns it.
        # original string
        $string = "Where-There-Is-A-Will-There-Is-A-Way";
        # transforming arrays into strings.
        @string = split('-', $string);
        $string_full = join( '-', @string );
        print "$string_full\n";
        
        Output:
            Where-There-Is-A-Will-There-Is-A-Way
    In the above program, the string is splitted at hyphens (-). We have used join() in $string_full and printed it.
