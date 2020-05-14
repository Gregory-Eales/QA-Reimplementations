import random

def generate_qubits(num_bits):
	
	bits = []
	basis = []

	for i in range(num_bits):
		pass


class QubitSet(object):

	def __init__(self):
		self.basis = None

	def measure_bit(self, index, basis):

		if basis != self.bits[index].basis:
			# randomly change the state 50/50 if basis incorrect
			pass






def main():

	# generate bits with basis
	# send and guess basis
	# transfer which basis was used
	# delete bits with incorrect basis
	# compare a portion of data left to see if matched
	# if not matched then the signal was intercepted
	# delete portion that was compared, then use remaining bits for encryption

	sally = generate_qubits()

if __name__ == "__main__":
	main()


