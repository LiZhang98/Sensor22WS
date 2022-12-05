#include "Nicla_System.h"
#include "Arduino_BHY2.h"

Sensor pressure(SENSOR_ID_BARO);
Sensor temperature(SENSOR_ID_TEMP);
SensorXYZ accelerometer(SENSOR_ID_ACC);
void setup() {
  Serial.begin(115200);
  BHY2.begin();
  pressure.begin();
  temperature.begin();
  accelerometer.begin();
}


void loop(){
  static auto lastCheck= millis();
  BHY2.update();

  // Check sensor values every second  
  if (millis() - lastCheck >= 100) {
    lastCheck = millis();
    Serial.println(String("acceleration: ") + accelerometer.toString());  
    Serial.println(String("pressure: ") + pressure.toString());
    Serial.println(String("temperature: ") + String(int(temperature.value())));
    Serial.println(lastCheck);
   
  }
}