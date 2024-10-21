Feature: Generar token para servicio Fuse y apigee
@obtenerToken
Scenario: Obtener token fuse
Given url 'https://certbtfuse.compartamos.com.pe:8090/cxf/api/experience/security/users/login'
* def requestPostToken = read("request-post-token.json")
When request requestPostToken
* method POST
Then status 200
* def tokenFuse = $.data.token
    #Sirve para imprimir si está tomando el valor del response
* print tokenFuse