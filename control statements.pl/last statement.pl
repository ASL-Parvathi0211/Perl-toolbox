# Perl last Statement
    The last statement in Perl is like break statement in C. It is used inside a loop to exit the loop immediately. In other words, last condition iterates the loop.
    The Perl syntax for last statement is given below:
    last LABEL;
        
        1. Perl last Statement Example
        Following is a simple example showing Perl last statement.
            use warnings;
            use strict;
            my ($key, $value);
            my %rate = ("shoes" => 550,
            "boots" => 1200,
            "jaggi" => 800,
            "jacket" => 1500);
            print("Please enter an item to know the price:\n");
            $key = <STDIN>;
            chomp($key);
            $value = 0;
            # searching
            foreach(keys %rate){
                if($_ eq $key){
                    $value = $rate{$_};
                    last; }
                    }
                    # result
                    if($value > 0){
                        print("$key costs is Rs. $value \n");
                        }else{
                            print("$key is not in our list. We apologise!!\n");
            }
        
            Output:
                Please enter an item to know the price:
                boots
                boots costs is Rs. 1200
                Please enter an item to know the price:
                top
                top is not in our list. We apologise!!
        In the above program
            • When user provides a key, hash elements runs via loop and each hash key is compared with the key provided by the user.
            • If match is found, we exit the loop using last statement otherwise search continues.
            • On finding a match result is displayed.

    # Perl last Statement with LABEL
        Using the Perl last statement alone, you can exits only innermost loop. If you want to exit a nested loop, put a label in the outer loop and pass label to the last statement.
        If LABEL is specified with last statement, execution drops out of the loop encountering LABEL instead of currently enclosing loop.
        The Perl syntax for last statement with LABEL is given below:
        
        1. last LABEL;
            Perl last Statement with LABEL Example
                use warnings;
                use strict;
                my ($key, $value);
                my %rate = ("shoes" => 550,
                "boots" => 1200,
                "jaggi" => 800,
                "jacket" => 1500);
                $value = 0;
                print("Please enter an item to know the price:\n");
                OUTER: while(<STDIN>){
                    $key = $_;
                    chomp($key);
                    # searching
                    INNER: foreach(keys %rate){
                        if($_ eq $key){
                            $value = $rate{$_};
                            last outer;
                            }
                            }
                            print("$key is not in our list. We apologise!!\n") if($value ==0);
                            # result
                            }
                            print("$key costs is Rs. $value \n");
                            
                Output:
                    Please enter an item to know the price:
                    jaggi
                    boots costs is Rs. 800
                    Please enter an item to know the price:
                    jeans
                    jeans is not in our list. We apologise!!
            The above program works in the same way except that it asks the user to enter a search key again if it couldn't find a match.
                Two labels OUTER and INNER are used.
                Inside foreach loop, if match is found, we'll exit both the loops because OUTER label is passed to the last statement.
