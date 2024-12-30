# Optimizing care plans based on patient data in Crystal
class CarePlan
      def self.optimize(patient : Patient)
        if patient.heart_rate > 100
          puts "Care Plan: Monitor heart rate closely, adjust medications."
        end
        if patient.oxygen_saturation < 90
          puts "Care Plan: Increase oxygen intake, consider respiratory therapy."
        end
        if patient.temperature > 38.0
          puts "Care Plan: Investigate fever cause, possibly administer fever-reducing medication."
        end
      end
    end
    
    # Optimize care plan based on patient's data
    CarePlan.optimize(patient)
    