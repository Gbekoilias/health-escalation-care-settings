// Analyzing health data
void analyze_data(array health_data) {
    foreach (data, health_data) {
        if (data["heart_rate"] > 100) {
            write("High heart rate detected: ", data["heart_rate"], "\n");
        }
        if (data["oxygen_saturation"] < 90) {
            write("Low oxygen saturation detected: ", data["oxygen_saturation"], "\n");
        }
    }
}

// Example health data
array health_data = ({
    (["heart_rate" : 110, "oxygen_saturation" : 88]),
    (["heart_rate" : 85, "oxygen_saturation" : 92]),
    (["heart_rate" : 95, "oxygen_saturation" : 89]),
});

// Analyze the data
analyze_data(health_data);
