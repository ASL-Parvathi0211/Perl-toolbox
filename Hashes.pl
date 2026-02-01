# Perl Hashes
    The hashes is the most essential and influential part of the perl language. A hash is a group of key-value pairs. The keys are unique strings and values are scalar values.
    Hashes are declared using my keyword. The variable name starts with a (%) sign.
    Hashes are like arrays but there are two differences between them. First arrays are ordered but hashes are unordered. Second, hash elements are accessed using its value while array elements are accessed using its index value.
    No repeating keys are allowed in hashes which makes the key values unique inside a hash. Every key has its single value.
    Syntax:
        my %hashName = ( "key" => "value"; )

    # Perl Hash Accessing
        To access single element of hash, ($) sign is used before the variable name. And then key element is written inside {} braces.
            my %capitals = (
                "India" => "New Delhi",
                "South Korea" => "Seoul",
                "USA" => "Washington, D.C.",
                "Australia" => "Canberra"
                );
                print"$capitals{'India'}\n";
                print"$capitals{'South Korea'}\n";
                print"$capitals{'USA'}\n";
                print"$capitals{'Australia'}\n";
            
            Output:
                New Delhi
                Seoul
                Washington, D.C.
                Canberra

    # Perl Hash Indexing
        Hashes are indexed using $key and $value variables. All the hash values will be printed using a while loop. As the while loop runs, values of each of these variables will be printed.
            my %capitals = (
                "India" => "New Delhi",
                "South Korea" => "Seoul",
                "USA" => "Washington, D.C.",
                "Australia" => "Canberra"
                );
                # LOOP THROUGH IT
                while (($key, $value) = each(%capitals)){
                    print $key.", ".$value."\n";
                    }
                    
            Output:
                Australia, Canberra
                India, New Delhi
                USA, Washington, D.C.
                South Korea, Seoul
    
    # Perl sorting Hash by key
        You can sort a hash using either its key element or value element. Perl provides a sort() function for this. In this example, we'll sort the hash by its key elements.
            my %capitals = (
                "India" => "New Delhi",
                "South Korea" => "Seoul",
                "USA" => "Washington, D.C.",
                "Australia" => "Canberra"
                );
                # Foreach loop
                foreach $key (sort keys %capitals) {
                    print "$key: $capitals{$key}\n";
                    }
                    
            Output:
                Australia: Canberra
                India: New Delhi
                South Korea: Seoul
                USA: Washington: D.C.
