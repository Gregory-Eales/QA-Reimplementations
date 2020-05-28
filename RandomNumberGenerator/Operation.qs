namespace RandomNumberGenerator {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    
    operation GenerateRandomBit() : Result {
        using (q = Qubit())
        { 
            // put the qubit into superposition
            H(q);

            // measure and return the bit           
            return MResetZ(q);  
        }
    }

}