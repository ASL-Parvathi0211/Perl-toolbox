# Perl split Function
    The Perl split function splits a string into an array. A string is splitted based on delimiter specified by pattern. By default, it whitespace is assumed as delimiter.
    split syntax is:
        Split /pattern/, variableName

    # Perl split Example
        In this example, split returns a list of strings. The delimiter is (-). It means string is splitted at (-).
            my $str = "Cu-K-Na-Hg-Pb-Li";
            my @break = split /-/, $str;
            print "@break\n";
            
            Output:
                Cu K Na Hg Pb Li
                
    # Perl split Limit number of parts
        We can limit the number of parts to be splitted for a string.
        In this example, string splits in 3 parts.
            my $str = "Cu-K-Na-Hg-Pb-Li";
            my @break = split(/-/, $str, 3);
            print "@break\n";
            
            Output:
                Cu K Na-Hg-Pb-Li

    # Perl split on Multiple Characters
        We can split a character at more than one delimiter. In the following example, we have split the string at (=) and (,).
            my $str = 'Vishal=18Sept,Anu=11May,Juhi=5Jul';
            my @words = split /[=,]/, $str;
            print "@words\n";
            
            Output:
                Vishal 18Sept Anu 11May Juhi 5Jul
                
            As they are key-value pairs, we can assign the result into a hash instead of an array.
                use Data::Dumper qw(Dumper);
                my $str = 'Vishal=18th Sept,Anu=11th May,Juhi=5th Jul';
                my %words = split /[=,]/, $str;
                print Dumper \%words;
                
                Output:
                    $VAR1 = (
                        'Anu', => '11th May',
                        'Vishal', => '18th Sept',
                        'Juhi', => '5th Jul',
                        );

    # Perl split on Empty String
        Split on empty string means the string will split at every place where it will find an empty string. There is an empty string, between every two characters. It means it will return the original string split into individual characters.
            my $str = "JAVA";
            my @break = split //, $str;
            print "@break\n";
            
            Output:
                J A V A
    # Perl join Function
        Perl join character, joins elements into a single string using a delimiter pattern to separate each element. It is opposite of split.
        join syntax is:
            join 'pattern', variableName
        Perl join Example
            In the following example, we have joined in three different ways.
            First, we are joining (:) in between each elements of array.
            Second, we will join (- vowels) with the output of first one.
            Third, we added two more characters in the original array.
                my @vowels = ('A', 'E', 'I');
                my $str = join ':', @vowels;
                print "$str\n";
                my $data = join "-", $str, "vowels";
                print "$data\n";
                $str = join '', @vowels, 'OU';
                print "$str\n";
                
                Output:
                    A:E:I
                    A:E:I -vowels
                    AEIOU

                    
