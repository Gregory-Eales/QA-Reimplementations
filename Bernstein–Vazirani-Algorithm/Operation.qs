namespace BernsteinVazirani {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Arrays;
    

    // generate size n secret bit string
    function GenerateSecretString(N : Int) : Int[] {

        // init array

        for (i in 0 .. N)
        {
            // generate random bit and add to array
            
        }
    }
    
    operation ApplyUniform(target : Qubit[]) : Unit
    is Adj + Ctl {
        // put qubits into super position
    }


    operation ApplyOracle(target : Qubit[], secret:Int[]) : Unit
    is Adj + Ctl {
        // dot product and modulo 2 between qubits and secret
    }


    operation BernsteinVazirani(target : Qubit) : Unit
    is Adj + Ctl {
        
        // generate bit string of length N

        // put qubits into super position

        // iterate until secret string is recreated  
    }

}
