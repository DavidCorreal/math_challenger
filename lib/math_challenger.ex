IO.puts("Did you really know math?")

operations = [:+, :-, :x, :/, :%]
n1 = IO.gets("Input number #1 (>=100): ") |> String.trim |> String.to_integer
n2 = IO.gets("Input number #2: ") |> String.trim |> String.to_integer

if(n1 < 100) do
  IO.puts("Feeling not brave? First number is too small, give another try.")
else
  op = Enum.random(operations)
  res_in = IO.gets("What is the result of #{n1}#{op}#{n2}: ") |> String.trim
  res_in_t = if String.contains?(res_in, "."), do: String.to_float(res_in), else: String.to_integer(res_in)

  res_cpu = case op do
    :+ -> n1 + n2
    :- -> n1 - n2
    :x -> n1 * n2
    :/ -> Float.round(n1 / n2, 2)
    :% -> rem(n1,n2)
  end

  cond do
    res_in_t !== res_cpu -> IO.puts("Not nice bro")
    true -> IO.puts("Nice math skills")
  end
end
