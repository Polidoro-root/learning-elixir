# case
# allow us to compare a value against many patterns until we find a matching one

case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} -> 
    "This clause will match and bind x to 2 in this clause"
  _ ->
    "This clause would match any value"
end

# existing variable, you need the ^ operator
x = 1

case 10 do
  ^x -> "Won't match"
  _ -> "Will match"
end

# clauses allow extra conditions via guards
case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    "Will match"
  _ ->
    "Would match anyway"
end

# COND
cond do
  2 + 2 == 5 ->
    false
  2 * 2 == 3 ->
    false
  1 + 1 == 2 ->
    true
end

# if all conditions return nil or false, throws a CondClauseError.
# To prevent this, it may be necessary to add a final condition, which always match true
cond do
  2 + 2 == 5 ->
    false
  2 * 2 == 3 ->
    false
  true ->
    true
end

# IF UNLESS
if true do
  "this works"
end

unless true do
  "this will never be seen"
end

if nil do
  "This won't be seen"
else
  "This will"
end

# do-end blocks
if true, do: 1 + 2

if false, do: :this, else: :that

if true do
  a = 1 + 2
  a + 10
end
# EQUALS TO
if true, do: (
  a = 1 + 2
  a + 10
)
