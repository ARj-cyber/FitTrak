from sweep_rules import SweepRules

class ProgressTracker:
    """
    This class represents the progress tracking data.
    It now includes a method to check the rules on the progress tracking data using the SweepRules class.
    """

    def __init__(self, data):
        """
        Initialize the ProgressTracker instance with the given data.
        """
        self.data = data

    def check_rules(self):
        """
        Check the rules on the progress tracking data using the SweepRules class.
        Returns a boolean value indicating whether the data satisfies the rules or not.
        """
        sweep_rules = SweepRules()
        return sweep_rules.rule1(self.data) and sweep_rules.rule2(self.data)
