from Errors import DefinitionException


class Alias:
    """
    Class that holds an alias in the program.
    An alias may be a @define, or a jump label.

    Once the value that the alias should be replaced with is known,
    it can be defined with define()
    """

    def __init__(self, name, alias_type, origin_line):
        """
        Create a new alias
        :param name: the name of the alias
        """
        self.name = name
        self.is_defined = False
        self.definition = ""
        self.alias_type = alias_type
        self.origin_line = origin_line

    def define(self, definition):
        """
        Define this alias now that it's value is known
        :param definition:
        :return: None
        """
        self.definition = definition
        self.is_defined = True

    def __str__(self):
        if self.is_defined:
            return "\'" + self.name + "\'=\'" + self.definition + "\'"
        else:
            return "\'" + self.name + "\'=(UNDEFINED)"


class Namespace:
    """
    A listing of all aliases that the assembly program contains.
    Aliases may be a @define, or a jump label.

    Used to detect name collisions.

    Also used during the replacement of all @defines/labels
    once their value is known.
    """

    def __init__(self):
        self.aliases = []

    def add_alias(self, name, alias_type, origin_line):
        """
        Add a new (undefined) alias to the listing
        :param name: The name of the alias
        :param alias_type: The type of alias (definition/label)
        :param origin_line: The source line this originates from.
        :return: None
        """
        self.aliases.append(Alias(name, alias_type, origin_line))

    def contains_alias(self, name):
        """
        Check if the Namespace contains an alias of a give name.
        :param name: The name to be checked
        :return: True if the namespace contains an alias. False otherwise
        """
        for a in self.aliases:
            if a.name == name:
                return True
        return False

    def is_alias_defined(self, name):
        """
        Check if a given alias is defined.

        Raises an Exception if there is no alias of that name.
        Use contains_alias() to confirm first.
        This is done so that the ParsingException may include the line context.

        :param name: The name of the alias
        :return: True if the alias is defined. False if not.
        """
        for a in self.aliases:
            if a.name == name:
                return a.is_defined
        raise Exception("Attempted to see if non-existent alias is defined. Missing contains_alias() check?")

    def get_alias_definition(self, name):
        """
        Get the definition of an alias

        Raises an Exception if there is no alias of that name.
        Use contains_alias() to confirm first.
        This is done so that the ParsingException may include the line context.

        :param name: the name
        :return:
        """
        for a in self.aliases:
            if a.name == name:
                return a.definition
        raise Exception("Attempted to get definition of non-existent alias. Missing contains_alias() check?")

    def recurse_definitions(self):
        max_recursion = 500
        for alias in self.aliases:
            name = alias.definition
            rec_count = 0
            while self.contains_alias(name):
                rec_count += 1
                if rec_count >= max_recursion:
                    raise DefinitionException("Recursion Cap (" + str(max_recursion) + ") reached while "
                                                                                       "attempting to define. is there "
                                                                                       "a cyclical definition?",
                                              alias)
                name = self.get_alias_definition(name)
            alias.definition = name

    def define_alias(self, name, definition):
        for a in self.aliases:
            if a.name == name:
                a.define(definition)
                return
        raise Exception("Attempted to define non-existent alias. Missing contains_alias() check?")

    def __str__(self):
        lst = []
        for a in self.aliases:
            lst.append(str(a))
        return str(lst)
