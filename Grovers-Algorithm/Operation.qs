namespace GroversAlgorithm
{
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;


    operation HelloWorld() : Int
    {
        Message("Hello Quantum!");
        return 0;
    }
}