// Generating a health report
void generate_report(int heart_rate, int oxygen_saturation) {
    write("Health Report:\n");
    write("Heart Rate: ", heart_rate, " bpm\n");
    write("Oxygen Saturation: ", oxygen_saturation, "%\n");

    if (heart_rate > 100) {
        write("Alert: High heart rate detected!\n");
    }
    if (oxygen_saturation < 90) {
        write("Alert: Low oxygen saturation detected!\n");
    }
}

// Example health data
int heart_rate = 110;
int oxygen_saturation = 88;

// Generate the report
generate_report(heart_rate, oxygen_saturation);
