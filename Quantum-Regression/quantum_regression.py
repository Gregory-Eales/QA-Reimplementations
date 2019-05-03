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


class quantum_number(self):

	def __init__(self, whole_place, decimal_place):
		pass

	def carry_the_one(self, n_place):
		pass

	def set_zero(self):
		pass