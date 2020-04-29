namespace HelloWorld 
 {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;

    operation SayHello() : Result
    {
        Message("Hello from quantum world!");

        using(q = Qubit())
        {
            DumpMachine();
        }
        return Zero;
    }
}