from collections import deque
from typing import List

from Util.Errors import ParsingException

from Parsing.ParsedLine import ParsedLine
from Parsing.ParsedLine import IfDirective, ElIfDirective, ElseDirective
from Parsing.ParsedLine import MacroDirective
from Parsing.ParsedLine import ForLoopDirective
from Parsing.ParsedLine import EndDirective


def associate_lines(lines: List[ParsedLine]):
    result = []
    in_queue = deque(lines)

    # While there are lines in the in_queue, consume block_components
    while in_queue:
        result.extend(_consume_block_component(in_queue))

    return result


def _peek_is_directive(in_queue, kind):
    if not in_queue:
        return False
    else:
        return isinstance(in_queue[0], kind)


def _consume_directive(in_queue, kind):
    if not in_queue:
        raise ParsingException("Unexpected EOF, expected %s" % kind.type_name)

    consumed = in_queue.popleft()

    if isinstance(consumed, kind):
        return consumed
    else:
        raise ParsingException("Unexpected %s, expected %s" % (consumed.type_name, kind.type_name))


def _consume_block(in_queue):
    result = []

    while _can_consume_block_component(in_queue):
        result.extend(_consume_block_component(in_queue))

    return result


def _can_consume_block_component(in_queue):
    if not in_queue:
        return False

    if isinstance(in_queue[0], IfDirective):
        return True
    elif isinstance(in_queue[0], MacroDirective):
        return True
    elif isinstance(in_queue[0], ForLoopDirective):
        return True
    elif not in_queue[0].is_block_delimiter():
        return True
    else:
        return False


def _consume_block_component(in_queue):
    if not in_queue:
        raise ParsingException("Unexpected EOF.")

    if isinstance(in_queue[0], IfDirective):
        # IF block return _consume_if(in_queue)
        return _consume_if(in_queue)
    elif isinstance(in_queue[0], MacroDirective):
        # MACRO block
        return _consume_macro(in_queue)
    elif isinstance(in_queue[0], ForLoopDirective):
        # For Loop block
        return _consume_forloop(in_queue)
    elif not in_queue[0].is_block_delimiter():
        # block of non-delimiter lines
        result = []
        while in_queue and not in_queue[0].is_block_delimiter():
            result.append(in_queue.popleft())
        return result
    else:
        # Error.
        line_id = in_queue[0].line_id
        raise ParsingException("Unexpected %s" % in_queue[0].type_name, line_id=line_id)


def _consume_if(in_queue):
    # Consume and validate beginning of if block
    if_directive = _consume_directive(in_queue, IfDirective)

    # Consume true block:
    if_directive.true_block = _consume_block(in_queue)

    # Consume optional elif blocks:
    while _peek_is_directive(in_queue, ElIfDirective):
        elif_directive = _consume_directive(in_queue, ElIfDirective)
        elif_directive.block = _consume_block(in_queue)
        if_directive.elif_instructions.append(elif_directive)

    # Consume optional else block:
    if _peek_is_directive(in_queue, ElseDirective):
        _consume_directive(in_queue, ElseDirective)
        if_directive.else_block = _consume_block(in_queue)

    # Consume end
    _consume_directive(in_queue, EndDirective)

    return [if_directive]


def _consume_macro(in_queue):
    # Consume macro directive
    macro_directive = _consume_directive(in_queue, MacroDirective)

    # Consume block body
    macro_directive.block = _consume_block(in_queue)

    # Consume end directive:
    _consume_directive(in_queue, EndDirective)

    return [macro_directive]


def _consume_forloop(in_queue):
    # Consume macro directive
    block_directive = _consume_directive(in_queue, ForLoopDirective)

    # Consume block body
    block_directive.block = _consume_block(in_queue)

    # Consume end directive:
    _consume_directive(in_queue, EndDirective)

    return [block_directive]
