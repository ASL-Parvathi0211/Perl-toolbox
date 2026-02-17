# Perl Strings to Arrays, split()
    With the help of split() function, we can split a string into array of strings and returns it.
        # original string
        $string = "Where-There-Is-A-Will-There-Is-A-Way";
        # transforming strings into arrays.
        @string = split('-', $string);
        print "$string[4]\n";
        
        Output:
            Will
            In the above program, we have transformed $string into array at hyphen (-) values. Now from this array, we have printed fourth element of the array.
