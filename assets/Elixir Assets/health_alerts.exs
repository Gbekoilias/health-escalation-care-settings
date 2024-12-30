# Generating health alerts in Elixir
defmodule HealthAlerts do
  def alert(heart_rate, oxygen_saturation) do
    if heart_rate > 100 do
      IO.puts("Alert: Heart rate is too high!")
    end
    if oxygen_saturation < 90 do
      IO.puts("Alert: Oxygen saturation is too low!")
    end
  end
end

# Example data
HealthAlerts.alert(110, 88)
