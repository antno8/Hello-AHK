FileAppend "This is the text to append.`n"   ; A comment is allowed here.
    , A_ProgramFiles "\SomeApplication\LogFile.txt"  ; Comment.
S↓


Similarly, the following lines would get merged into a single line because the last two start with "and" or "or":
if Color = "Red" or Color = "Green"  or Color = "Blue"   ; Comment.
    or Color = "Black" or Color = "Gray" or Color = "White"   ; Comment.
    and ProductIsAvailableInColor(Product, Color)   ; Comment.
S↓


The ternary operator is also a good candidate:
ProductIsAvailable := (Color = "Red")
    ? false  ; We don't have any red products, so don't bother calling the function.
    : ProductIsAvailableInColor(Product, Color)
S↓


The following examples are equivalent to those above:
FileAppend "This is the text to append.`n",   ; A comment is allowed here.
    A_ProgramFiles "\SomeApplication\LogFile.txt"  ; Comment.

if Color = "Red" or Color = "Green"  or Color = "Blue" or   ; Comment.
    Color = "Black" or Color = "Gray" or Color = "White" and   ; Comment.
    ProductIsAvailableInColor(Product, Color)   ; Comment.

ProductIsAvailable := (Color = "Red") ?
    false : ; We don't have any red products, so don't bother calling the function.
    ProductIsAvailableInColor(Product, Color)

