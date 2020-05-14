namespace HelloWorld 
 {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Math;

    operation FlipFirstSign() : Result
    {
        using(q=Qubit())
        {

            H(q);
            DumpMachine();
            Message("");
            Message("-----------");

            Z(q);
            DumpMachine();
            Message("");
            Message("-----------");
        
            X(q);
            DumpMachine();
            Message("");
            Message("-----------");

            Reset(q);
        }


        return Zero;
    }

    operation NegState() : Result
    {
        using(q=Qubit())
        {
            

            X(q);
            DumpMachine();
            Message("");
            Message("-----------");

            H(q);
            DumpMachine();
            Message("");
            Message("-----------");

            Reset(q);
        }


        return Zero;
    }


    operation Rotate(alpha : Double, beta : Double) : Result
    {
        using(q=Qubit())
        {
            let theta = ArcTan2(alpha, beta);

            Rx(theta, q);
            DumpMachine();
            Message("");
            Message("-----------");

            H(q);
            DumpMachine();
            Message("");
            Message("-----------");

            Reset(q);
        }


        return Zero;
    }
}