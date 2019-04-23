import cirq

# define the circuit length
length = 10
width = 2

# define qubits and store them in list
qubits = [cirq.GridQubit(i, j) for i in range(length) for j in range(width)]
#print(qubits)

# define quantum circuit
quantum_circuit = cirq.Circuit()

for q in qubits:
	
	if q.row + q.col % 2 == 0:
		quantum_circuit.append(cirq.H(q))
	if q.row + q.col % 2 == 1:
		quantum_circuit.append(cirq.X(q))
	

print(quantum_circuit)


def rot_x_gate(length, half_turns):
	rot = cirq.XPowGate(exponent=half_turns)
	for i in range(length):
		for j in range(length):
			yield rot(cirq.GridQubit(i, j))

quantum_circuit.append(rot_x_gate(3, 0.1))
print(quantum_circuit)
