import cirq

# define the circuit length
length = 3

# define qubits
qubits = [cirq.GridQubit(i, j) for i in range(length) for j in range(length)]
print(qubits)

# define quantum circuit
quantum_circuit = cirq.Circuit

for q in qubits:

	print(cirq.H(q))

	"""
	if q.row + q.col % 2 == 0:
		quantum_circuit.append(cirq.H(q))
	if q.row + q.col % 2 == 1:
		quantum_circuit.append(cirq.X(q))
	"""

print(quantum_circuit)