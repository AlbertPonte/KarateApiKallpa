function fn(){

    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    var baseUrl = karate.properties['baseUrl'] || 'https://certbtfuse.compartamos.com.pe:8090/cxf/api/process/core/credits/credit/active/'
    var user = karate.properties['user'] || 'karate'


    return{
        api: {
            baseUrl: baseUrl
        },
        user:{
            name: user
        }
    };
}