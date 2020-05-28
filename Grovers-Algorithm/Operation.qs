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
        let nItems = 1 <<< nQubits;
        let angle = ArcSin(1. / Sqrt(IntAsDouble(nItems)));
        let nIterations = Round(0.25 * PI() / angle - 0.5);
        return nIterations;
    }

    operation ReflectMarked(x : Qubit[]) : Unit
    {
        using (y = Qubit())
        {
            within {
                X(y);
                H(y);
                ApplyToEachA(X, x[...2...]);
            } apply {
                Controlled X(x, y);
            }
        }
    }

    operation ReflectUniform(x : Qubit[]) : Unit
    {
        within
        {
            Adjoint PrepareUniform(inputQubits);
            PrepareAllOnes(inputQubits);
        }apply
        {
            ReflectAboutAllOnes(inputQubits);
        }
    }


    operation GroversAlgorithm(N:Int) : Result[]
    {
        // define number of applications
        let NumIter = GetIterations();

        using (qubits = Qubit[N])
        {

            ApplyToEachCA(H, qubits);

            // apply reflection on qubits NumIter times
            for(i in 0 .. NumIter-1)
            {
                ReflectMarked(qubits);
                ReflectUniform(qubits);
            }
            return ForEach(MResetZ, qubits);
        }
    }

}