class MathCircle {
  static const double pi = 3.1415;
  double myRadius;

  MathCircle(this.myRadius);

  double circleArea() {
    return pi * (myRadius * myRadius);
  }

  static double staticCircleArea(double radius) {
    return pi * (radius * radius);
  }

  static double staticCircleAreaWrong() {
    return pi *
        (myRadius *
            myRadius); // Erro! myRadius só existe depois em instâncias da classe, então não pode ser usado em um método estático!
  }
}
