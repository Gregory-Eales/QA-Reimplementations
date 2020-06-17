import cirq
import random



def set_io_qubits(num_qubits):

	input_qubits = [cirq.GridQubit(i, 0) for i in range(num_qubits)]
	output_qubit = cirq.GridQubit(num_qubits, 0)


# make bv circuit
def make_bv_circuit(input_qubits, output_qubits, oracle):
	pass


print(cirq.GridQubit(10, 0))

#ircuit = make_bv_circuit(input_qubits, output_qubits, oracle)
#simulator = cirq.Simulator()
