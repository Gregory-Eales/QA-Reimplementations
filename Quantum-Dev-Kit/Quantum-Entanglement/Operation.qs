

namespace Quantum.Bell{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Set(desired : Result, q1 : Qubit): Unit{
        if (desired != M(q1)){
            X(q1);
        }
    }
}
