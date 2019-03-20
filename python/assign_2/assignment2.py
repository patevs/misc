from collections import Counter

def add_vectors(vector_1, vector_2):
    """Returns a list object representing the result of adding two vectors together.

       Arguments:
       vector_1 -- list representing first vector
       vector_2 -- list representing second vector

       Error checking:
       Both arguments must be of type list.
       Both vectors must of the same length.
       Only vector elements of type int can be added together.
    """
    # create an empty list
    result = []
    flag = False
    # return if either inputs arnt of type list
    if(type(vector_1) != type(result) ):
        print("Error: first argument is not a list")
        flag = True
    if(type(vector_2) != type(result)):         
        print("Error: second argument is not a list")
        flag = True
    if(flag):
        return
    # return if inputs are different lengths
    if(len(vector_1) != len(vector_2)):
        print("Error: lengths of the two vectors are different")
        return

    
    for i, item in enumerate(vector_1):
        test = 0
        # check both vectors are of type int
        if(type(vector_1[i]) != type(test)):
            print("Error: attempted to add incompatible %s to %s" % (str(vector_1[i]),str(vector_2[i])))
            return
        if(type(vector_2[i]) != type(test)):         
            print("Error: attempted to add incompatible %s to %s" % (str(vector_1[i]),str(vector_2[i])))
            return
        # calculate the sum of the two vectors
        res = int(vector_1[i]) + int(vector_2[i])
        result.append(res)
    # return the list of summed vectorss
    return result
    pass
    

def print_frequency(some_text):
    """Prints a table of letter frequencies within a string. 

       Non-letter characters are ignored (use .isalpha()).
       Table is sorted alphabetically.
       Letter case is ignored.
       Two blank spaces will separate the letter from its count.

       Returns None in all cases.

       Argument:
       some_text -- string containing the text to be analysed.

       Error checking:
       The argument must be a string object.
    """
    # return if not of type string
    if(type(some_text) != type("String")):
        print ("Error: only accepts strings")
        return
    # return if input has no length
    if(len(some_text) == 0):
        return
        
    # create the counter of character frequencies in string
    some_text = some_text.strip()
    some_text = some_text.lower()
    counter = Counter(some_text)

    # sort the counter into alphabetical order
    counter.most_common()
    counter = sorted(counter.items())
    # print all keys and frequency values out
    for key, value in counter:
        if(key.isalpha()):
            print (key, "", value)
    return
    pass


def verbing(some_text):
    """Returns a string where the each word has ing added to it if it is 3 or more characters or length and 
       ly to shorter words.

       Argument:
       some_text -- string containing the text to be analysed.

       Error checking:
       The argument must be a string object.
    """
    # return if not of type string
    if(type(some_text) != type("String")):
        print ("Error: only accepts strings")
        return
    # return if input has no length
    if(len(some_text) == 0):
        print ("''")
        return

    # split by space
    some_text = some_text.split(" ")
    result = ""
    # append 'ing' or 'ly' to the end of each word
    # each verbed word is then concatenated onto the result string
    for value in some_text:
        if(len(value) > 2):
            value += "ing "
            result += value
        else:
            value += "ly "
            result += value

    # strip extra whitespace from the result
    result = result.strip()
    # return the result string
    return result
    pass
   

def add_vectors_file(file_name):
    """
    Processes a given comma seperated file and extracts the 'pay' and 'bonus' columns
    then adds the two vectors together to determine the total price.

    Argument:
    file_name -- the name of the file (assumed to exist in the same directory as the 
                 python script is executed). The file is a set of comma seperated values
                 the first line contains headers (seperated by commas) and subsequent lines
                 contain data corrosponding to each header.

    Error checking:
    The argument must be a string object
    The file must exist and be readable (no need to distinguish these cases)
    The 'pay' and 'bonus' columns must exist in the header

    """
    pass

    
