

class Timer {

  boolean up;
  int startPoint;
  int endPoint;
  boolean counting;
  int currentTime;

//CONSTRUCTOR PER DEFECTE 
  Timer() {
    up = true;
    startPoint = 0;
    endPoint = 0;
    counting = false;
    currentTime = startPoint;
  }

//CONSTRUCTOR INICIAL I FINAL
  Timer(int sPoint, int ePoint) {
    startPoint = sPoint;
    endPoint = ePoint;
    if (startPoint < endPoint){
     up = true; 
    }
    else{
      up = false;
    }
    currentTime = startPoint;
    counting = false;
  }



  void reset() {
    counting = false;
    currentTime = startPoint;
  }

  void setPoints(int sPoint, int ePoint) {
    startPoint = sPoint;
    endPoint = ePoint;
  }

  void update(int millis) {
    if(counting){
      currentTime = millis;
    }
  }

  void start1() {
    if(counting){
     counting = false; 
    }
    else {
      counting = true;
    }
  }

  int getTimeMillis() {
    return currentTime;
  }

  float getTimeSec() {
    return (currentTime / 1000.0);
  }

  boolean getFinish() {
    if(currentTime >= endPoint){
      return true;
    }
    else{
      return false;
    }
  }
}
