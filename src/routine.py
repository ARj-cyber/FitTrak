from sweep_rules import SweepRules

class Routine:
    """
    This class represents a fitness routine.
    It now includes a method to check the rules on the routine using the SweepRules class.
    """

    def __init__(self, routine_data):
        """
        Initialize the Routine instance with the given routine data.
        """
        self.routine_data = routine_data

    def check_rules(self):
        """
        Check the rules on the routine using the SweepRules class.
        Returns a boolean value indicating whether the routine satisfies the rules or not.
        """
        sweep_rules = SweepRules()
        return sweep_rules.rule1(self.routine_data) and sweep_rules.rule2(self.routine_data)
