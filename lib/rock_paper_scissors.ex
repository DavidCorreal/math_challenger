IO.puts("\u2702\u2702\u2702\u2702\u2702\u2702\u2702 Rock, Paper, Scissors \u2702\u2702\u2702\u2702\u2702\u2702\u2702")
IO.puts("-------------------------------------")
IO.puts("Write the number of the option with which you think you win me\n")
IO.puts("1. Rock")
IO.puts("2. Paper")
IO.puts("3. Scissors")

options = [1, 2, 3]
userOption = IO.gets("\nYour choice: ") |> String.trim |> String.to_integer
userOptionString = if userOption == 1, do: "Rock", else: if userOption == 2, do: "Paper", else: "Scissors";

if(userOption > 3) do

  IO.puts("Write a valid option, try again!")

else

  cpuOption = Enum.random(options)
  cpuOptionString = if cpuOption == 1, do: "Rock", else: if cpuOption == 2, do: "Paper", else: "Scissors";

  result = case {userOption, cpuOption} do
    {1, 3} -> "You win! Rock breaks scissors."
    {1, 2} -> "You lost. Paper covers rock."
    {1, 1} -> "Draw. They both chose rock."
    {2, 1} -> "You win! Paper covers rock."
    {2, 3} -> "You lost. Scissors cut paper."
    {2, 2} -> "Draw. They both chose paper."
    {3, 2} -> "You win! Scissors cut paper."
    {3, 1} -> "You lost. Rock breaks scissors."
    {3, 3} -> "Draw. They both chose scissors."
  end

  IO.puts("\n-------------------------------------\n")
  IO.puts("You chose #{userOptionString}")
  IO.puts("The CPU chose #{cpuOptionString}")
  IO.puts(result)
  IO.puts("\n-------------------------------------\n")

end
