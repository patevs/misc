
/**
 *  src/main/scala/Main.scala
 */

// IMPORTS
import java.util.{Date, Locale}
import java.text.DateFormat._


object Main {
  def main(args: Array[String]) {
    println("\n\tHello, World!")
    val now = new Date
    val df = getDateInstance(LONG, Locale.ENGLISH)
    print("\n\tThe date is: ")
    println(df format now)
    println("\n")
  }
}