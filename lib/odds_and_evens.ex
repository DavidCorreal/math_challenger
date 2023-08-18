IO.puts("\u2702\u2702\u2702\u2702\u2702\u2702\u2702 Odds and Evens \u2702\u2702\u2702\u2702\u2702\u2702\u2702")
IO.puts("-------------------------------------")
IO.puts("Write the number of the option with which you think you win me\n")
IO.puts("1. Odd - impar")
IO.puts("2. Even - par")

userOption = IO.gets("\nYour choice: ") |> String.trim |> String.to_integer
userOptionString = if userOption == 1, do: "odd", else: "even";

if(userOption > 2) do

  IO.puts("Write a valid option, try again!")

else
  cpuOption = if userOption == 2, do: 1, else: if userOption == 1, do: 2, else: 0;
  cpuOptionString = if cpuOption == 1, do: "odd", else: "even";

  userNumber = IO.gets("Write a number: ") |> String.trim |> String.to_integer
  cpuNumber = :rand.uniform(100) + 1
  sum = userNumber + cpuNumber

  IO.puts("\nYou chose: #{userOptionString} - The CPU chose: #{cpuOptionString}")
  IO.puts("You chose number: #{userNumber} - The CPU chose number: #{cpuNumber}")
  IO.puts("The sum of these two numbers is: #{sum}\n")

  case rem(sum, 2) do
    0 -> if userOption == 2, do: IO.puts("You win! The number is #{userOptionString}."), else: IO.puts("The CPU won! The number is #{cpuOptionString}.")
    _ -> IO.puts("The CPU won! The number is #{cpuOptionString}.")
  end

end
