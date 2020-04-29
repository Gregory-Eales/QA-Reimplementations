namespace HelloWorld 
 {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;

    operation SayHello() : Result
    {
        using(q=Qubit())
        {
            DumpMachine();

            X(q);
            Message("Apply the X Gate:");
            DumpMachine();

            H(q);
            Message("Apply the Hadmard Gate:");
            DumpMachine();

        }
        return Zero;
    }
}