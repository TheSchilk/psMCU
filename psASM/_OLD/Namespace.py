from enum import Enum


class Scope(Enum):
    SCOPE_GLOBAL = 0
    SCOPE_FILE = 1
    SCOPE_BLOCK = 2


class Expression:
    def __init__(self, name, value, alias_type, origin_file_id, origin_line_index, origin_block, scope):
        self.name = name
        self.value = value
        self.alias_type = alias_type
        self.origin_file_id = origin_file_id
        self.origin_line_index = origin_line_index
        self.origin_block = origin_block
        self.scope = scope


class Namespace:
    def __init__(self):
        self.expressions = []

    @classmethod
    def from_file(self, content):
        pass

    def __contains__(self):
        pass

    def evalutae(self, file_id, block, expression):
        pass
