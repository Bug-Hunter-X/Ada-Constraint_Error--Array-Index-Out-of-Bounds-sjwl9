```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive is Integer range 1..100;
   B : Positive;
begin
   B := A(11); -- Accessing an out-of-bounds element
   Ada.Text_IO.Put_Line("Value of B:" & B'Image);
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error: Index out of bounds");
end Example;
```