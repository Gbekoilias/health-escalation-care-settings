# Generating health alerts in Crystal
def generate_alert(heart_rate : Int32, oxygen_saturation : Int32)
      if heart_rate > 100
        puts "Alert: High heart rate detected!"
      end
      if oxygen_saturation < 90
        puts "Alert: Low oxygen saturation detected!"
      end
    end
    
    # Example health data
    generate_alert(110, 88)
    