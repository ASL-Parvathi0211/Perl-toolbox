# Perl Sorting Arrays, sort()
    To sort an array, sort() array function is used. The sort() function sorts all the elements of an array according to the ASCII standard.
        # defining array
        @days = ("sun", "mon", "tue", "wed", "thu", "fri", "sat");
        print "Original array: @days\n";
        # sorting array
        @days = sort(@days);
        print "Sorted array: @days\n";
        
        Output:
            Original array: sun mon tue wed thu fri sat
            Sorted array: fri mon sat sun thu tue wed
