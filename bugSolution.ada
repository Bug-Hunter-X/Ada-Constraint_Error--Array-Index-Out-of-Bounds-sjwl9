```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive is Integer range 1..100;
   B : Positive;
begin
   if A'Length >= 11 then
      B := A(11);
   else
      Ada.Text_IO.Put_Line("Index 11 is out of bounds");
   end if;
   Ada.Text_IO.Put_Line("Value of B:" & B'Image);
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error: Index out of bounds");
end Example;
```