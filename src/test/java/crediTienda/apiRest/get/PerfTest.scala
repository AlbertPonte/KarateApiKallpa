package crediTienda.apiRest.get

import io.gatling.javaapi.core._
import io.gatling.javaapi.core.CoreDsl._
import io.gatling.javaapi.http._
import io.gatling.javaapi.http.HttpDsl._
import io.gatling.javaapi.jdbc._
import io.gatling.javaapi.jdbc.JdbcDsl._
import java.time.Duration
import scala.language.postfixOps

class PerfTest extends Simulation{
  
  val lineaVigente = scenario("Consulta Línea Vigente").exec(karateFeature("classpath:crediTienda/apiRest/get/lineaCreditoVigente.feature"))
  setUp(
    lineaVigente.inject(ramUsers(20)during(10 seconds))
  )
}
