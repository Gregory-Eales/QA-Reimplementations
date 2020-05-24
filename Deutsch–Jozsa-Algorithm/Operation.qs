namespace DeutschJozsa {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    //open Microsoft.Quantum.Diagnostics;

    operation SayHello() : Unit
    {
        Message("Hello from quantum world!");
    }

    
    operation Zero_Oracle(x: Qubit[], y:Qubit) : Unit
    {
    
    }
    
    operation One_Oracle(x: Qubit[], y: Qubit): Unit
    {
        
        //always returns one
        
        X(y);
    }
    
    operation Kth_Qubit_Oracle(x: Qubit[], y: Qubit, k: Int): Unit
    {
        
        //returns the state of the kth qubit
        
        H(y);
        H(x[k]);
        CNOT(y, x[k]);
        H(y);
        H(x[k]);
    }


    operation Deutsch_Jozsa(N: Int, oracle: ((Qubit[], Qubit) => Unit)) : Bool
    {
        mutable isConstant = true;

        using((x, y) = (Qubit[N], Qubit()) )
        {

            // put all x into super position
            ApplyToEach(H, x);

            // put y into |-⟩
            X(y);
            H(y);

            // apply the oracle
            oracle(x, y);

            // put x out of superposition
            ApplyToEach(H, x);

            // measure each x after applying oracle
            for(index in 0 .. Length(x)-1)
            {
                if(IsResultOne(M(x[index])) and isConstant == true)
                {
                    set isConstant = false;
                }
            }

            // reset all x and y
            ResetAll(x);
            Reset(y);
        }

        // return result
        return isConstant;
    }

    operation RunDeutschJozsa(N:Int) : String
    {
        mutable IsConstant = " is constant";
        mutable IsBalanced = " is balanced";

        if (Deutsch_Jozsa(N, Zero_Oracle))
        {
            Message("The Zero Oracle"+IsConstant);
        }
        else
        {
            Message("The Zero Oracle"+IsBalanced);
        }

        if (Deutsch_Jozsa(N, One_Oracle))
        {
            Message("The One Oracle"+IsConstant);
        }
        else
        {
            Message("The One Oracle"+IsBalanced);
        }

        return "Complete";
    }
    
}
