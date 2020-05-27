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


    operation Oracle(N:Int) : Result[]
    {
        using (qubits = Qubit[N])
        {

            
        }
    }
}