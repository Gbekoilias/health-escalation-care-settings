# Real-time health monitoring system in Elixir
defmodule HealthMonitor do
  @threshold_heart_rate 100
  @threshold_oxygen 90

  def monitor_health(heart_rate, oxygen_saturation) do
    if heart_rate > @threshold_heart_rate do
      IO.puts("Warning: High heart rate!")
    end

    if oxygen_saturation < @threshold_oxygen do
      IO.puts("Warning: Low oxygen saturation!")
    end
  end
end

# Example health data
HealthMonitor.monitor_health(110, 88)
