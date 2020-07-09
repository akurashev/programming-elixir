defmodule Calculator do
  def calculate(list), do: do_calculate(list, 0, nil, 0)

  defp do_calculate([], operand1, operation, operand2) when operation == ?+, do: operand1 + operand2
  defp do_calculate([], operand1, operation, operand2) when operation == ?-, do: operand1 - operand2
  defp do_calculate([], operand1, operation, operand2) when operation == ?/, do: operand1 / operand2
  defp do_calculate([], operand1, operation, operand2) when operation == ?*, do: operand1 * operand2

  defp do_calculate([head | tail], operand1, _, operand2)
  when head in '+-/*' do
    do_calculate(tail, operand1, head, operand2)
  end

  defp do_calculate([head | tail], operand1, operation, operand2)
  when operation == nil and head in '0123456789' do
    do_calculate(tail, operand1 * 10 + head - ?0, operation, operand2)
  end

  defp do_calculate([head | tail], operand1, operation, operand2)
  when operation != nil and head in '0123456789' do
    do_calculate(tail, operand1, operation, operand2 * 10 + head - ?0)
  end

  defp do_calculate([?\s | tail], operand1, operation, operand2) do
    do_calculate(tail, operand1, operation, operand2)
  end
end


Calculator.calculate('123 + 27') # 150
Calculator.calculate('123 - 27') # 96
Calculator.calculate('123 / 27') # 4.5555555
Calculator.calculate('123 * 27') # 3321
