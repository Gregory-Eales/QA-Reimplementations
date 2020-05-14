
namespace HelloWorld {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation SayHello() : Unit {
        Message("Hello from quantum world!");
    }
}

namespace Qrng {

    open Microsoft.Quantum.Intrinsic;

    operation SampleQuantumRandomNumberGenerator() : Result {
        using (q = Qubit()){
            H(q);
            let r = M(q);
            Reset(q);
            return r;
        }
    }

}