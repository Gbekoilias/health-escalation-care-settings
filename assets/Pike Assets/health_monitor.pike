// Simple health monitoring system in Pike
global constant THRESHOLD_HEART_RATE = 100; // Example threshold for heart rate
global constant THRESHOLD_OXYGEN = 90; // Example threshold for oxygen saturation

// Function to monitor heart rate and oxygen saturation
void monitor_health(int heart_rate, int oxygen_saturation) {
    if (heart_rate > THRESHOLD_HEART_RATE) {
        write("Warning: Heart rate exceeds threshold!\n");
    }
    if (oxygen_saturation < THRESHOLD_OXYGEN) {
        write("Warning: Oxygen saturation below threshold!\n");
    }
}

// Example health data
int current_heart_rate = 110;
int current_oxygen = 88;

// Monitor the health
monitor_health(current_heart_rate, current_oxygen);
