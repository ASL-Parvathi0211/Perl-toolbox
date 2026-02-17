# Strings and Regular Expressions
    PHP has long supported two regular expression implementations known as Perl and POSIX.
    
    # Regular Expressions
        Regular expressions provide the foundation for describing or matching data according to defined syntax rules. A regular expression is nothing more than a pattern of characters itself, matched against a certain parcel of text. This sequence may be a pattern with which you are already familiar, such as the word dog, or it may be a pattern with specific meaning in the context of the world of pattern matching, <(?)>.*<\ /.?>
        
    # Regular Expression Syntax (POSIX)
        POSIX stands for Portable Operating System Interface for Unix and is representative of a set of standards originally intended for Unix-based operating systems. POSIX regular expression syntax is an attempt to standardize how regular expressions are implemented in many programming languages.
        
    # Brackets
        Brackets ([]) are used to represent a list, or range, of characters to be matched. For instance, contrary to the regular expression php, which will locate strings containing the explicit string php, the regular expression [php] will find any string containing the character p or h. Several commonly used character ranges follow:
            ➢ [a-z] matches any character from lowercase a through lowercase z
            ➢ [A-Z] matches any character from uppercase A through uppercase Z
            ➢ [A-Za-z] matches any character from uppercase A through lowercase z
            ➢ [0-9] matches any decimal digit from 0 through 9
            
    # Quantifiers
        Sometimes you might want to create regular expressions that look for characters based on their frequency or position
        • p+ matches any string containing at least one p
        • p* matches any string containing zero or more p’s
        • p? matches any string containing zero or one p
        • p{2} matches any string containing a sequence of two p’s
        • p{2,3} matches any string containing a sequence of two or three p’s
        • p{2,} matches any string containing a sequence of at least two p’s
        • p$ matches any string with p at the end of it
        
    # Predefined Character Ranges (Character Classes)
        For reasons of convenience, several predefined character ranges, also known as character classes, are available. Character classes specify an entire range of characters—for example, the alphabet or an integer set. Standard classes include the following:
            ➢ [:alpha:]: Lowercase and uppercase alphabetical characters. This can also be specified as [A-Za-z]
            ➢ [:alnum:]: Lowercase and uppercase alphabetical characters and numerical digits. This can also be specified as [A-Za-z0-9]
            ➢ [:cntrl:]: Control characters such as tab, escape, or backspace
            ➢ [:digit:]: Numerical digits 0 through 9. This can also be specified as [0-9]
            ➢ [:graph:]: Printable characters found in the range of ASCII 33 to 126
            ➢ [:lower:]: Lowercase alphabetical characters. This can also be specified as [a-z]
            ➢ [:punct:]: Punctuation characters, including ~ ` ! @ # $ % ^ & * ( ) - _ + = { } [ ] : ; '< > , . ? and /
            ➢ [:upper:]: Uppercase alphabetical characters. This can also be specified as [A-Z]. [:space:]:
            Whitespace characters, including the space, horizontal tab, vertical tab, new line, form feed, or carriage return
            ➢ [:xdigit:]: Hexadecimal characters. This can also be specified as [a-fA-F0-9]
            PHP’s Regular Expression Functions (POSIX Extended)
            PHP offers seven functions for searching strings using POSIX-style regular expressions: ereg(),ereg_replace(), eregi(), eregi_replace(), split(), spliti(), and sql_regcase()
            |-------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
            |Performing a Case- Sensitive Search                                            | The ereg() function executes a case-sensitive search of a string for a defined pattern, returning the length of the matched string if the pattern is found and FALSE otherwise. Its prototype follows: int ereg(string pattern, string string [, array regs])                                                    |
            | Performing a Case- Insensitive Search                                         | The eregi() function searches a string for a defined pattern in a case-insensitive fashion. Its prototype follows: int eregi(string pattern, string string, [array regs]) This function can be useful when checking the validity of strings, such as passwords                                                   |
            | Replacing Text in a Case-Sensitive Fashion                                    | The ereg_replace() function operates much like ereg(), except that its power is extended to finding and replacing a pattern with a replacement string instead of simply locating it. Its prototype follows: string ereg_replace(string pattern, string replacement, string string)                               |
            | Replacing Text in a Case-Insensitive Fashion                                  | The eregi_replace() function operates exactly like ereg_replace(), except that the search for pattern in string is not case sensitive. Its prototype follows: string eregi_replace(string pattern, string replacement, string string)                                                                            |
            | Splitting a String into Various Elements Based on a Case Sensitive Pattern    | The split() function divides a string into various elements, with the boundaries of each element based on the occurrence of a defined pattern within the string. Its prototype follows: array split(string pattern, string string [, int limit])                                                                 |
            | Splitting a String into Various Elements Based on a Case Insensitive Pattern  | The spliti() function operates exactly in the same manner as its sibling, split(), except that its pattern is treated in a case-insensitive fashion. Its prototype follows: array spliti(string pattern, string string [, int limit])                                                                            |
            | Accommodating Products Supporting Solely Case-Sensitive Regular Expressions   | The sql_regcase() function converts each character in a string into a bracketed expression containing two characters. If the character is alphabetical, the bracket will contain both forms; otherwise, the original character will be left unchanged. Its prototype follows: string sql_regcase(string string)  | 
            |-------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
            
    # Regular Expression Syntax (Perl) Modifiers
        Often you’ll want to tweak the interpretation of a regular expression; for example, you may want to tell the regular expression to execute a case-insensitive search or to ignore comments embedded within its syntax. These tweaks are known as modifiers, and they go a long way toward helping you to write short and concise expressions.
        Ex:
            I: Perform a case-insensitive search
            G: Find all occurrences (perform a global search)
            
    # Meta characters
        Perl regular expressions also employ meta characters to further filter their searches. A meta character is simply an character or character sequence that symbolizes special meaning. A list of useful meta characters follows
            \A: Matches only at the beginning of the string
            \b: Matches a word boundary
            \B: Matches anything but a word boundary
            \d: Matches a digit character. This is the same as [0-9]
            \D: Matches a nondigit character
            \s: Matches a whitespace character
            \S: Matches a nonwhite space character
            []: Encloses a character
            (): Encloses a character grouping or defines a back reference
            $: Matches the end of a line
            ^: Matches the beginning of a line
            ^: Matches any character except for the newline
            \: Quotes the next metacharacter
            \w: Matches any string containing solely underscore and alphanumeric characters
        This is the same as [a-zA-Z0-9_]
            W: Matches a string, omitting the underscore and alphanumeric characters.
            
    # PHP’s Regular Expression Functions (Perl Compatible)
        PHP offers eight functions for searching and modifying strings using Perl-compatible regular expressions: preg_filter(), preg_grep(), preg_match(), preg_match_all(), preg_quote(), preg_replace(), preg_replace_callback(), and preg_split()
        |--------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
        | Searching an Array                                                             | The preg_grep() function searches all elements of an array, returning an array consisting of all elements matching a certain pattern. Its prototype follows:  array preg_grep(string pattern, array input [, int flags])                                                                               |
        | Searching for a Pattern                                                        | The preg_match() function searches a string for a specific pattern, returning TRUE if it exists and FALSE otherwise. Its prototype follows:  int preg_match(string pattern, string string [, array matches] [, int flags [, int offset]]])                                                             |
        | Matching All Occurrences of a Pattern                                          | The preg_match_all() function matches all occurrences of a pattern in a string, assigning each occurrence to an array in the order you specify via an optional input parameter. Its prototype follows: int preg_match_all(string pattern, string string, array matches [, int flags] [, int offset]))  | 
        | Delimiting Special Regular Expression Characters                               | The function preg_quote() inserts a backslash delimiter before every character of special significance to regular expression syntax. These special characters include $ ^ * ( ) + = { } [ ] | \\ : < >. Its prototype follows: string preg_quote(string str [, string delimiter])                      |
        | Replacing All Occurrences of a Pattern                                         | The preg_replace() function replaces all occurrences of pattern with replacement, and returns the modified result. Its prototype follows: mixed preg_replace(mixed pattern, mixed replacement, mixed str [, int limit [, int count]])                                                                  |
        | Creating a Custom Replacement Function                                         | Consider a situation where you want to scan some text for acronyms such as IRS and insert the complete name directly following the acronym. To do so, you need to create a custom function and then use the function                                                                                   |
        | Splitting a String into Various Elements Based on a Case- Insensitive Pattern  | The preg_split() function operates exactly like split(), except that pattern can also be defined in terms of a regular expression. Its prototype follows: array preg_split(string pattern, string string [, int limit [, int lags]])                                                                   |
        |--------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
