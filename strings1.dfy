method isPrefix(pre: string, str: string) returns (res:bool) 
{
    if |str| < |pre| {
        return false;
    }
    else if pre[..] == str[..|pre|]{
        return true;
    }
    else{
        return false;
    }
}

method isSubstring(sub: string, str: string) returns (res:bool)
{
    var i := 0;
    while i <= |str| - |sub|
    {
        var temp := isPrefix(sub, str[i..]);
        if  temp == true {
            return true;
        }
        else {
            i := i + 1;
        }
    }
    return false;
}