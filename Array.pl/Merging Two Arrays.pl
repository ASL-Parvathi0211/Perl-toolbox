# Perl Merging Two Arrays, merged()
    Two arrays can be merged together using merged() function as a single string removing all the commas in between them.
        #two arrays
        @array1 = ("Girl", "in", "front", "of", "me");
        @array2 = ("is", "very", "beautiful");
        #merging both the arrays
        @merged = (@array1, @array2);
        print "@merged\n";
        
        Output:
            Girl in front of me is very beautiful
    In the above program, array1 and array2 are merged into one single string and then printed.
