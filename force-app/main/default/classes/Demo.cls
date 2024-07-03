public with sharing class Demo {
   
    //Method
    public  void Sum() {

        //Sum of Two number
        Integer x=5 , y=6 , z;
        z = x+y;
        System.debug('sum of two number='+z);
             
    }

    public  void Subtract()
    {
        //Subtract of Two number
        Integer x=5 , y=6 , z;
        z = x-y;
        System.debug('sum of two number='+z);
             
    }
    public  static void multiplying(Integer var1 , Integer var2)
    {
        //Subtract of Two number
        Integer  z;
        z = var1 * var2;
        System.debug('sum of two number='+z);
        System.debug('Sum of n numbers are:- ',+z);
    }
}