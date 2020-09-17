defmodule TaxData do
  def load(file_path) do
    with {:ok, io_device} <- File.open(file_path),
         _header <- IO.read(io_device, :line),
         stream <- IO.stream(io_device, :line) do
      stream
      |> Enum.map(&mapper/1)
    end
  end

  defp mapper(row) do
    [id, ship_to, net_amount] =
      row
      |> String.trim()
      |> String.split(",")

    [
      id: String.to_integer(id),
      ship_to: String.to_atom(ship_to),
      net_amount: String.to_float(net_amount)
    ]
  end
end

TaxData.load("data.csv")

# [
#   [id: 123, ship_to: :":NC", net_amount: 100.0],
#   [id: 124, ship_to: :":OK", net_amount: 35.5],
#   [id: 125, ship_to: :":TX", net_amount: 24.0],
#   [id: 126, ship_to: :":TX", net_amount: 44.8],
#   [id: 127, ship_to: :":NC", net_amount: 25.0],
#   [id: 128, ship_to: :":MA", net_amount: 10.0],
#   [id: 129, ship_to: :":CA", net_amount: 102.0],
#   [id: 120, ship_to: :":NC", net_amount: 50.0]
# ]
