package crediTienda.apiRest.get;

import com.intuit.karate.junit5.Karate;

public class lineaCreditoVigenteGetRunner {
    @Karate.Test
    Karate lineaCreditoVigenteGet(){
        return Karate.run().relativeTo(getClass());
    }
}
