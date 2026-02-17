# Perl Array Functions
    You can add or remove an element from an array using some array functions.
    We'll discuss following array Perl functions:
        
    1. Push on Array
        The push array function appends a new element at the end of the array.
            @array = ("pink", "red", "blue");
            push @array, "orange";
            print "@array\n";
                
            Output:
                pink red blue orange
        In the above program, "orange" element is added at the end of the array.
            
    2. Pop on Array
        The pop array function removes the last element from the array.
            @array = ("pink", "red", "blue");
            pop @array;
            print "@array\n";
                
            Output:
                pink red
        In the above program, "blue" element is removed from the end of the array.
            
    3. Shift on Array
        The shift array function removes the left most element of array and thus shorten the array by 1.
            @array = ("pink", "red", "blue");
            shift @array;
            print "@array\n";
                
            Output:
                red blue
        In the above program, "pink" is removed from the array.
            
    4. Unshift on Array
        The unshift array function adds a new element at the start of the array.
            @array = ("pink", "red", "blue");
            unshift @array, "orange";
            print "@array\n";
                
            Output:
                orange pink red blue
        In the above program, "orange" is added at the start of the array.
