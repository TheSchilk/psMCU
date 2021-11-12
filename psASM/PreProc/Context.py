"""Contexts, which handle preproc values on a global/file/block scope"""
from PreProc.ExpressionTree import Expression
from Util.Errors import ContextException
from Parsing.ParsedLine import MacroDirective


class Context:
    def __init__(self):
        self.context_dict = {}

    def __getitem__(self, key):
        # Ensure key exists
        if key not in self:
            raise ContextException("Identifier '%s' is unknown." % key)

        # Ensure key's value is known
        if not self.is_value_known(key):
            raise ContextException("Identifier '%s' is recognized but it's value is unknown at this time." % key)

        return self.context_dict[key]

    def __setitem__(self, key, value):
        # A value can only be registered if the key is not yet know, or known but
        # the value is undefined.
        if key in self and self.is_value_known(key):
            raise ContextException("Identifier '%s' is already defined and cannot be re-defined." % key)

        self.context_dict[key] = value

    def __contains__(self, key):
        return key in self.context_dict

    def is_value_known(self, key):
        if key not in self:
            return False

        return self.context_dict[key] is not None

    def get_macro(self, key):
        val = self[key]

        if not isinstance(val, MacroDirective):
            raise ContextException("Identifier '%s' is not a macro." % key)

        return val

    def get_str(self, key):
        val = self[key]

        if isinstance(val, Expression):
            pass

        if isinstance(val, int):
            pass

        if not isinstance(val, Expression):
            if isinstance(val, MacroDirective):
                raise ContextException("Identifier '%s' is not an expression, but a macro." % key)
            else:
                raise ContextException("Identifier '%s' is not an expression." % key)

        return val

    def get_int(self, key):
        pass


class ContextView:
    def __init__(self, g_context, f_context, b_context):
        self.g_context = g_context
        self.f_context = f_context
        self.b_context = b_context

    def _select_context(self, key):
        if key.startswith('.'):
            return self.b_context
        elif key.startswith('_'):
            return self.f_context
        else:
            return self.g_context

    def __getitem__(self, key):
        return self._select_context(key)[key]

    def __setitem__(self, key, value):
        self._select_context(key)[key] = value

    def __contains__(self, key):
        return key in self._select_context(key)

    def is_value_known(self, key):
        return self._select_context(key).is_value_known(key)


class FileContextManager(ContextView):

    def __init__(self, g_context):
        f_context = Context()
        first_block = Context()
        super().__init__(g_context, f_context, first_block)
        self.b_contexts = [first_block]

    def new_block(self):
        new_block = Context()
        self.b_contexts.append(new_block)
        self.b_context = new_block

    def handle_new_block(self, labels):
        """Check a list of labels for global labels and start a new block if one is found"""
        for label in labels:
            if not label.startswith('.'): # TODO should file-label start new block?
                self.new_block()
                break

    def get_fixed_context_view(self):
        return ContextView(self.g_context, self.f_context, self.b_context)
