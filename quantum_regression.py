import cirq


class quantum_weights(object):

	def __init__(self, length, witdh):
		self.length = length
		self.width = width
		self.qubits = init_qubits(length, width)


	def init_qubits(self, length, width):
		return [cirq.GridQubit(i, j) for i in range(length) for j in range(width)]

	def collapse_qubits(self):
		pass

	def multiply(self, a):
		pass

	def __mul__(self, a):
		print("multiplication")


x = quantum_weights(10, 10)

x*1