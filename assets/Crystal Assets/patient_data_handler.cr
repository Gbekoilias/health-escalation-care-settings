# Managing patient records in Crystal
class Patient
      property name : String
      property heart_rate : Int32
      property oxygen_saturation : Int32
      property temperature : Float32
    
      def initialize(name : String, heart_rate : Int32, oxygen_saturation : Int32, temperature : Float32)
        @name = name
        @heart_rate = heart_rate
        @oxygen_saturation = oxygen_saturation
        @temperature = temperature
      end
    
      def display_info
        puts "Patient: #{@name}"
        puts "Heart Rate: #{@heart_rate} bpm"
        puts "Oxygen Saturation: #{@oxygen_saturation}%"
        puts "Temperature: #{@temperature}°C"
      end
    end
    
    # Create and display a patient's data
    patient = Patient.new("John Doe", 110, 88, 37.5)
    patient.display_info
    