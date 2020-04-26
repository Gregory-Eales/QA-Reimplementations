import qsharp
from Microsoft.Quantum.Samples.SimpleGrover import SearchForMarkedInput

n_qubits = 5
result = SearchForMarkedInput.simulate(nQubits=n_qubits)
print(result)