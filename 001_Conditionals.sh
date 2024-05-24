# Read in one character from STDIN.
    # If the character is 'Y' or 'y' display "YES".
    # If the character is 'N' or 'n' display "NO".
    # No other character will be provided as input.

# Sample Input : y  
# Sample Output: YES

#********************************** code **********************************#

read ansowr

case $ansowr in 
    'Y'|'y')
        echo "YES"
        ;;
        
    'N'|'n')
        echo "NO"
        ;;
esac

