function fn(){

    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    return{
        api: {
            baseUrl: 'https://certbtfuse.compartamos.com.pe:8090/cxf/api/process/core/credits/credit/active'
        },
        user:{
            name:'karate'
        }
    };
}