from sweep_rules import SweepRules

class ExerciseMetadata:
    """
    This class represents the exercise metadata.
    It now includes a method to check the rules on the metadata using the SweepRules class.
    """

    def __init__(self, metadata):
        """
        Initialize the ExerciseMetadata instance with the given metadata.
        """
        self.metadata = metadata

    def check_rules(self):
        """
        Check the rules on the exercise metadata using the SweepRules class.
        Returns a boolean value indicating whether the metadata satisfies the rules or not.
        """
        sweep_rules = SweepRules()
        return sweep_rules.rule1(self.metadata) and sweep_rules.rule2(self.metadata)
