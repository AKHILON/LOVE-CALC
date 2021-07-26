class Brain {
  String getMsg(int loveScore) {
    if (loveScore >= 90) {
      return "Perfect Made For Eachother";
    } else if (loveScore >= 70) {
      return "You Like Eachother";
    } else if (loveScore >= 50) {
      return "Good !  You Should Try more...";
    } else if (loveScore >= 25 && loveScore <= 50) {
      return "you Only loving";
    } else {
      return "You Dont\'t Like EachOther";
    }
  }
}
