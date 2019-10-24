import cirq

class VariationalMethod(object):

    """
    implemented tutorial from the circ docs

    used in finding low energy states of quantum systems
    applicable in minimizing any obejective function
    """

    def __init__(self):

        self.qubits = self.init_qubits()
        self.circuit = cirq.Circuit()
        self.populate_circuit()

    def init_qubits(self, length=3):
        q = [cirq.GridQubit(i, j) for i in range(length) for j in range(length)]
        return q

    def populate_circuit(self):

        for q in qubits:
            if (q.row + q.col) % 2 == 0:
                self.circuit.append(cirq.H(q))

        for q in qubits:
            if (q.row + q.col) % 2 == 1:
                self.circuit.append(cirq.X(q))
