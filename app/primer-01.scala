object sum {
  def main(args: Array[String]): Unit = {
    if (args.length < 2) {
      println("Необходимо передать два числа в командной строке.")
    } else {
      val num1 = args(0).toInt
      val num2 = args(1).toInt
      val sum = num1 + num2
      println("Сумма = " + sum)
    }
  }
}