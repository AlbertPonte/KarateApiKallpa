Feature: Consulta de Línea de Crédito Vigente SI/NO

Background:

  * call read("tokenLineaCredito.feature@obtenerToken")
  * url api.baseUrl
   # * url 'https://certbtfuse.compartamos.com.pe:8090/cxf/api/process/core/credits/credit/active'
   # * path activePath = '/active'
   # * params { username: "#(user.name)", formatted:true, personId:#(DNI), module:#(mod), operationType:#(tipoOpe)}
   # * params { username: "#(user.name)"}
  * header Authorization = 'Bearer '+tokenFuse
  * def bodyParameter = read("body.json")
  * def responseFailDocErroneo =  read("fail.docErroneo-parameter-get.json")
  * def responseFailDocVacio = read("fail-docVacio-parameter-get.json")
  * def responseCNoActivo = read("successful-CNoActivo-response-get.json")
  * def responseCActivo =  read("successfull-CActivo-response-get.json")

  Scenario Outline: Obtener cliente con LC Activa

    When request bodyParameter
    * method POST
    * print bodyParameter
    Then status 200
    * match $ == responseCActivo
    Examples:
      | DNI      |
      | 70798290 |

    Scenario Outline: consulta de cliente sin LC activa
      When request bodyParameter
      * method POST
      Then status 200
      * match $ == responseCNoActivo
      Examples:
        | DNI      |
        | 60698234 |

      Scenario Outline: Cuando se envía parámetro DNI vacio
        When request bodyParameter
        * method POST
        Then status 200
        * match $ == responseFailDocVacio
        Examples:
          | DNI |
          |     |