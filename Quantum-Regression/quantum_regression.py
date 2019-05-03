import cirq

class QuantumRegressor(object):

	def __init__(self, length, width):
		self.weights = quantum_weights()

	def fit(self, x, y, alpha, iterations):
		self.quant_x = self.quantize(x)

	def quantize(self):
		pass


class quantum_weights(object):

	def __init__(self, length, witdth):
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


class QuantumNumber(object):

	def __init__(self, whole_place, decimal_place):
		pass

	def carry_the_one(self, n_place):
		pass

	def set_zero(self):
		pass

	def decimal_to_binary(self, x):
		x = str(x)

		if "." in x:
			whole, fractional = x.split(".")
			print(whole, fractional)

		else:
			whole = int(x)

		binary_whole = []
		searching = True
		place = 1
		while searching:

			if whole % 2**place == 0:
				binary_whole.append(0)

			else:
				binary_whole.append(1)
				whole = whole - 2**(place-1)

			if whole == 0 or place > 10:
				searching = False

			place = place + 1

		return binary_whole, whole










