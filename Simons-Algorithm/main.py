import cirq
import random



def black_box_oracle():

	"""
		- gaurenteed to be a one to one or a two to one function

		- maps one input to one output or maps two diff inputs to
		 one output and input1 + input2 = b

		- if b = 0000... then f is one to one

	"""

	pass


def create_simons_circuit(oracle, num_qubits=5):

	circuit = cirq.Circuit()

	input_qubits = [cirq.GridQubit(i, 0) for i in range(num_qubits)]
	output_qubit = cirq.GridQubit(num_qubits, 0)

	# put into superposition
	circuit.append(cirq.H.on_each(input_qubits[0:len(input_qubits)//2]))


	return circuit

def main():

	circuit = create_simons_circuit(None)
	print(circuit)

if __name__ == "__main__":
	main()