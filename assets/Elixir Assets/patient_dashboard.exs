# Displaying a real-time patient dashboard in Elixir
defmodule PatientDashboard do
  def display(patient_name, heart_rate, oxygen_saturation, temperature) do
    IO.puts("Patient: #{patient_name}")
    IO.puts("Heart Rate: #{heart_rate} bpm")
    IO.puts("Oxygen Saturation: #{oxygen_saturation}%")
    IO.puts("Temperature: #{temperature}°C")
  end
end

# Example data
PatientDashboard.display("John Doe", 110, 88, 37.5)
