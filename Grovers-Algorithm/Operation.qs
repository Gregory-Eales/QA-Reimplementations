namespace GroversAlgorithm
{
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Arrays;


    operation HelloWorld() : Int
    {
        Message("Hello Quantum!");
        return 0;
    }

    // gets the number of times to apply grover
    function GetIterations(NumQubits : Int) : Int
    {
        
    }


    operation GroversAlgorithm(N:Int) : Result[]
    {
        // define number of applications
        let NumIter = GetIterations();

        using (qubits = Qubit[N])
        {

            // apply reflection on qubits NumIter times
            for(i in 0 .. NumIter)
            {
                
            }

        }
    }

}