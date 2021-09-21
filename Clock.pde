// class name
class Clock {

  // main variables
  int time_now;
  int time_old;
  int time_delta_millis;
  float time_delta_sec;

  // constructor: object initialization
  Clock() {
    time_now = 0;
    time_old = 0;
    time_delta_millis = 0;
  }

  // executed everytime inside draw to calculate elapsed time since last execution
  void update() {
    time_now = millis();
    time_delta_millis = time_now - time_old;
    time_old = time_now;

    time_delta_sec = time_delta_millis / 1000.0;
  }

  // return mseconds elapsed since last execution
  int getDeltaMillis() {
    return time_delta_millis;
  }

  // return seconds elapsed since last execution
  float getDeltaSec() {
    return time_delta_sec;
  }
}
