import cirq
import math


class Bob(object):

	"""
	
	"""

	def __init__(self):
		
		self.basis_log = []

		

class Alice(object):

	"""
	Alice is the sender in this simulation
	"""

	def __init__(self):
		
		self.basis_log = []

		self.rand_string = self.generate_string()

	def send_qubit(self):
		pass


	def generate_string(self):
		pass



class Eve(object):

	def __init__(self):
		pass
	
	def eavesdrop(self, qubit):
		pass



def main():

	circuit = cirq.Circuit()
	circuit.append(cirq.H(q) for q in cirq.LineQubit.range(5))
	circuit.append(cirq.X(q) for q in cirq.LineQubit.range(5))
	circuit.append(cirq.Moment([cirq.H(q)]) for q in cirq.LineQubit.range(5))

	circuit.append(cirq.X(q) for q in cirq.LineQubit.range(3))
	circuit.append(cirq.Moment([cirq.H(q)]) for q in cirq.LineQubit.range(3))
	circuit.append(cirq.Moment([cirq.measure(q)]) for q in cirq.LineQubit.range(5))
	print(circuit)


	sim = cirq.Simulator()
	print(sim.simulate(circuit))


if __name__ == "__main__":

	main()
