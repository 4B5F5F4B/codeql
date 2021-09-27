/*
 * CodeQL library for Ruby
 * Automatically generated from the tree-sitter grammar; do not edit
 */

private import codeql.files.FileSystem
private import codeql.Locations

module Ruby {
  /** The base class for all AST nodes */
  class AstNode extends @ruby_ast_node {
    /** Gets a string representation of this element. */
    string toString() { result = this.getAPrimaryQlClass() }

    /** Gets the location of this element. */
    Location getLocation() { none() }

    /** Gets the parent of this element. */
    AstNode getParent() { ruby_ast_node_parent(this, result, _) }

    /** Gets the index of this node among the children of its parent. */
    int getParentIndex() { ruby_ast_node_parent(this, _, result) }

    /** Gets a field or child node of this node. */
    AstNode getAFieldOrChild() { none() }

    /** Gets the name of the primary QL class for this element. */
    string getAPrimaryQlClass() { result = "???" }

    /** Gets a comma-separated list of the names of the primary CodeQL classes to which this element belongs. */
    string getPrimaryQlClasses() { result = concat(getAPrimaryQlClass(), ",") }
  }

  /** A token. */
  class Token extends @ruby_token, AstNode {
    /** Gets the value of this token. */
    string getValue() { ruby_tokeninfo(this, _, result, _) }

    /** Gets the location of this token. */
    override Location getLocation() { ruby_tokeninfo(this, _, _, result) }

    /** Gets a string representation of this element. */
    override string toString() { result = getValue() }

    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Token" }
  }

  /** A reserved word. */
  class ReservedWord extends @ruby_reserved_word, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ReservedWord" }
  }

  class UnderscoreArg extends @ruby_underscore_arg, AstNode { }

  class UnderscoreLhs extends @ruby_underscore_lhs, AstNode { }

  class UnderscoreMethodName extends @ruby_underscore_method_name, AstNode { }

  class UnderscorePrimary extends @ruby_underscore_primary, AstNode { }

  class UnderscoreStatement extends @ruby_underscore_statement, AstNode { }

  class UnderscoreVariable extends @ruby_underscore_variable, AstNode { }

  /** A class representing `alias` nodes. */
  class Alias extends @ruby_alias, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Alias" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_alias_def(this, _, _, result) }

    /** Gets the node corresponding to the field `alias`. */
    UnderscoreMethodName getAlias() { ruby_alias_def(this, result, _, _) }

    /** Gets the node corresponding to the field `name`. */
    UnderscoreMethodName getName() { ruby_alias_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_alias_def(this, result, _, _) or ruby_alias_def(this, _, result, _)
    }
  }

  /** A class representing `argument_list` nodes. */
  class ArgumentList extends @ruby_argument_list, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ArgumentList" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_argument_list_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_argument_list_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_argument_list_child(this, _, result) }
  }

  /** A class representing `array` nodes. */
  class Array extends @ruby_array, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Array" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_array_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_array_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_array_child(this, _, result) }
  }

  /** A class representing `assignment` nodes. */
  class Assignment extends @ruby_assignment, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Assignment" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_assignment_def(this, _, _, result) }

    /** Gets the node corresponding to the field `left`. */
    AstNode getLeft() { ruby_assignment_def(this, result, _, _) }

    /** Gets the node corresponding to the field `right`. */
    AstNode getRight() { ruby_assignment_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_assignment_def(this, result, _, _) or ruby_assignment_def(this, _, result, _)
    }
  }

  /** A class representing `bare_string` nodes. */
  class BareString extends @ruby_bare_string, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BareString" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_bare_string_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_bare_string_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_bare_string_child(this, _, result) }
  }

  /** A class representing `bare_symbol` nodes. */
  class BareSymbol extends @ruby_bare_symbol, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BareSymbol" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_bare_symbol_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_bare_symbol_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_bare_symbol_child(this, _, result) }
  }

  /** A class representing `begin` nodes. */
  class Begin extends @ruby_begin, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Begin" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_begin_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_begin_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_begin_child(this, _, result) }
  }

  /** A class representing `begin_block` nodes. */
  class BeginBlock extends @ruby_begin_block, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BeginBlock" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_begin_block_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_begin_block_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_begin_block_child(this, _, result) }
  }

  /** A class representing `binary` nodes. */
  class Binary extends @ruby_binary, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Binary" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_binary_def(this, _, _, _, result) }

    /** Gets the node corresponding to the field `left`. */
    AstNode getLeft() { ruby_binary_def(this, result, _, _, _) }

    /** Gets the node corresponding to the field `operator`. */
    string getOperator() {
      exists(int value | ruby_binary_def(this, _, value, _, _) |
        result = "!=" and value = 0
        or
        result = "!~" and value = 1
        or
        result = "%" and value = 2
        or
        result = "&" and value = 3
        or
        result = "&&" and value = 4
        or
        result = "*" and value = 5
        or
        result = "**" and value = 6
        or
        result = "+" and value = 7
        or
        result = "-" and value = 8
        or
        result = "/" and value = 9
        or
        result = "<" and value = 10
        or
        result = "<<" and value = 11
        or
        result = "<=" and value = 12
        or
        result = "<=>" and value = 13
        or
        result = "==" and value = 14
        or
        result = "===" and value = 15
        or
        result = "=~" and value = 16
        or
        result = ">" and value = 17
        or
        result = ">=" and value = 18
        or
        result = ">>" and value = 19
        or
        result = "^" and value = 20
        or
        result = "and" and value = 21
        or
        result = "or" and value = 22
        or
        result = "|" and value = 23
        or
        result = "||" and value = 24
      )
    }

    /** Gets the node corresponding to the field `right`. */
    AstNode getRight() { ruby_binary_def(this, _, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_binary_def(this, result, _, _, _) or ruby_binary_def(this, _, _, result, _)
    }
  }

  /** A class representing `block` nodes. */
  class Block extends @ruby_block, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Block" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_block_def(this, result) }

    /** Gets the node corresponding to the field `parameters`. */
    BlockParameters getParameters() { ruby_block_parameters(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_block_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_block_parameters(this, result) or ruby_block_child(this, _, result)
    }
  }

  /** A class representing `block_argument` nodes. */
  class BlockArgument extends @ruby_block_argument, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BlockArgument" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_block_argument_def(this, _, result) }

    /** Gets the child of this node. */
    UnderscoreArg getChild() { ruby_block_argument_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_block_argument_def(this, result, _) }
  }

  /** A class representing `block_parameter` nodes. */
  class BlockParameter extends @ruby_block_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BlockParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_block_parameter_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_block_parameter_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_block_parameter_def(this, result, _) }
  }

  /** A class representing `block_parameters` nodes. */
  class BlockParameters extends @ruby_block_parameters, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "BlockParameters" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_block_parameters_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_block_parameters_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_block_parameters_child(this, _, result) }
  }

  /** A class representing `break` nodes. */
  class Break extends @ruby_break, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Break" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_break_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_break_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_break_child(this, result) }
  }

  /** A class representing `call` nodes. */
  class Call extends @ruby_call, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Call" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_call_def(this, _, result) }

    /** Gets the node corresponding to the field `arguments`. */
    ArgumentList getArguments() { ruby_call_arguments(this, result) }

    /** Gets the node corresponding to the field `block`. */
    AstNode getBlock() { ruby_call_block(this, result) }

    /** Gets the node corresponding to the field `method`. */
    AstNode getMethod() { ruby_call_def(this, result, _) }

    /** Gets the node corresponding to the field `receiver`. */
    AstNode getReceiver() { ruby_call_receiver(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_call_arguments(this, result) or
      ruby_call_block(this, result) or
      ruby_call_def(this, result, _) or
      ruby_call_receiver(this, result)
    }
  }

  /** A class representing `case` nodes. */
  class Case extends @ruby_case__, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Case" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_case_def(this, result) }

    /** Gets the node corresponding to the field `value`. */
    UnderscoreStatement getValue() { ruby_case_value(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_case_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_case_value(this, result) or ruby_case_child(this, _, result)
    }
  }

  /** A class representing `chained_string` nodes. */
  class ChainedString extends @ruby_chained_string, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ChainedString" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_chained_string_def(this, result) }

    /** Gets the `i`th child of this node. */
    String getChild(int i) { ruby_chained_string_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_chained_string_child(this, _, result) }
  }

  /** A class representing `character` tokens. */
  class Character extends @ruby_token_character, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Character" }
  }

  /** A class representing `class` nodes. */
  class Class extends @ruby_class, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Class" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_class_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    AstNode getName() { ruby_class_def(this, result, _) }

    /** Gets the node corresponding to the field `superclass`. */
    Superclass getSuperclass() { ruby_class_superclass(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_class_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_class_def(this, result, _) or
      ruby_class_superclass(this, result) or
      ruby_class_child(this, _, result)
    }
  }

  /** A class representing `class_variable` tokens. */
  class ClassVariable extends @ruby_token_class_variable, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ClassVariable" }
  }

  /** A class representing `comment` tokens. */
  class Comment extends @ruby_token_comment, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Comment" }
  }

  /** A class representing `complex` tokens. */
  class Complex extends @ruby_token_complex, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Complex" }
  }

  /** A class representing `conditional` nodes. */
  class Conditional extends @ruby_conditional, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Conditional" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_conditional_def(this, _, _, _, result) }

    /** Gets the node corresponding to the field `alternative`. */
    UnderscoreArg getAlternative() { ruby_conditional_def(this, result, _, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreArg getCondition() { ruby_conditional_def(this, _, result, _, _) }

    /** Gets the node corresponding to the field `consequence`. */
    UnderscoreArg getConsequence() { ruby_conditional_def(this, _, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_conditional_def(this, result, _, _, _) or
      ruby_conditional_def(this, _, result, _, _) or
      ruby_conditional_def(this, _, _, result, _)
    }
  }

  /** A class representing `constant` tokens. */
  class Constant extends @ruby_token_constant, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Constant" }
  }

  /** A class representing `delimited_symbol` nodes. */
  class DelimitedSymbol extends @ruby_delimited_symbol, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "DelimitedSymbol" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_delimited_symbol_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_delimited_symbol_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_delimited_symbol_child(this, _, result) }
  }

  /** A class representing `destructured_left_assignment` nodes. */
  class DestructuredLeftAssignment extends @ruby_destructured_left_assignment, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "DestructuredLeftAssignment" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_destructured_left_assignment_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_destructured_left_assignment_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_destructured_left_assignment_child(this, _, result) }
  }

  /** A class representing `destructured_parameter` nodes. */
  class DestructuredParameter extends @ruby_destructured_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "DestructuredParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_destructured_parameter_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_destructured_parameter_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_destructured_parameter_child(this, _, result) }
  }

  /** A class representing `do` nodes. */
  class Do extends @ruby_do, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Do" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_do_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_do_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_do_child(this, _, result) }
  }

  /** A class representing `do_block` nodes. */
  class DoBlock extends @ruby_do_block, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "DoBlock" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_do_block_def(this, result) }

    /** Gets the node corresponding to the field `parameters`. */
    BlockParameters getParameters() { ruby_do_block_parameters(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_do_block_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_do_block_parameters(this, result) or ruby_do_block_child(this, _, result)
    }
  }

  /** A class representing `element_reference` nodes. */
  class ElementReference extends @ruby_element_reference, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ElementReference" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_element_reference_def(this, _, result) }

    /** Gets the node corresponding to the field `object`. */
    UnderscorePrimary getObject() { ruby_element_reference_def(this, result, _) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_element_reference_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_element_reference_def(this, result, _) or ruby_element_reference_child(this, _, result)
    }
  }

  /** A class representing `else` nodes. */
  class Else extends @ruby_else, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Else" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_else_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_else_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_else_child(this, _, result) }
  }

  /** A class representing `elsif` nodes. */
  class Elsif extends @ruby_elsif, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Elsif" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_elsif_def(this, _, result) }

    /** Gets the node corresponding to the field `alternative`. */
    AstNode getAlternative() { ruby_elsif_alternative(this, result) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreStatement getCondition() { ruby_elsif_def(this, result, _) }

    /** Gets the node corresponding to the field `consequence`. */
    Then getConsequence() { ruby_elsif_consequence(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_elsif_alternative(this, result) or
      ruby_elsif_def(this, result, _) or
      ruby_elsif_consequence(this, result)
    }
  }

  /** A class representing `empty_statement` tokens. */
  class EmptyStatement extends @ruby_token_empty_statement, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "EmptyStatement" }
  }

  /** A class representing `end_block` nodes. */
  class EndBlock extends @ruby_end_block, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "EndBlock" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_end_block_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_end_block_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_end_block_child(this, _, result) }
  }

  /** A class representing `ensure` nodes. */
  class Ensure extends @ruby_ensure, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Ensure" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_ensure_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_ensure_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_ensure_child(this, _, result) }
  }

  /** A class representing `escape_sequence` tokens. */
  class EscapeSequence extends @ruby_token_escape_sequence, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "EscapeSequence" }
  }

  /** A class representing `exception_variable` nodes. */
  class ExceptionVariable extends @ruby_exception_variable, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ExceptionVariable" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_exception_variable_def(this, _, result) }

    /** Gets the child of this node. */
    UnderscoreLhs getChild() { ruby_exception_variable_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_exception_variable_def(this, result, _) }
  }

  /** A class representing `exceptions` nodes. */
  class Exceptions extends @ruby_exceptions, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Exceptions" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_exceptions_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_exceptions_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_exceptions_child(this, _, result) }
  }

  /** A class representing `false` tokens. */
  class False extends @ruby_token_false, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "False" }
  }

  /** A class representing `float` tokens. */
  class Float extends @ruby_token_float, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Float" }
  }

  /** A class representing `for` nodes. */
  class For extends @ruby_for, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "For" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_for_def(this, _, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    Do getBody() { ruby_for_def(this, result, _, _, _) }

    /** Gets the node corresponding to the field `pattern`. */
    AstNode getPattern() { ruby_for_def(this, _, result, _, _) }

    /** Gets the node corresponding to the field `value`. */
    In getValue() { ruby_for_def(this, _, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_for_def(this, result, _, _, _) or
      ruby_for_def(this, _, result, _, _) or
      ruby_for_def(this, _, _, result, _)
    }
  }

  /** A class representing `global_variable` tokens. */
  class GlobalVariable extends @ruby_token_global_variable, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "GlobalVariable" }
  }

  /** A class representing `hash` nodes. */
  class Hash extends @ruby_hash, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Hash" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_hash_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_hash_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_hash_child(this, _, result) }
  }

  /** A class representing `hash_key_symbol` tokens. */
  class HashKeySymbol extends @ruby_token_hash_key_symbol, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HashKeySymbol" }
  }

  /** A class representing `hash_splat_argument` nodes. */
  class HashSplatArgument extends @ruby_hash_splat_argument, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HashSplatArgument" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_hash_splat_argument_def(this, _, result) }

    /** Gets the child of this node. */
    UnderscoreArg getChild() { ruby_hash_splat_argument_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_hash_splat_argument_def(this, result, _) }
  }

  /** A class representing `hash_splat_parameter` nodes. */
  class HashSplatParameter extends @ruby_hash_splat_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HashSplatParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_hash_splat_parameter_def(this, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_hash_splat_parameter_name(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_hash_splat_parameter_name(this, result) }
  }

  /** A class representing `heredoc_beginning` tokens. */
  class HeredocBeginning extends @ruby_token_heredoc_beginning, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HeredocBeginning" }
  }

  /** A class representing `heredoc_body` nodes. */
  class HeredocBody extends @ruby_heredoc_body, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HeredocBody" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_heredoc_body_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_heredoc_body_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_heredoc_body_child(this, _, result) }
  }

  /** A class representing `heredoc_content` tokens. */
  class HeredocContent extends @ruby_token_heredoc_content, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HeredocContent" }
  }

  /** A class representing `heredoc_end` tokens. */
  class HeredocEnd extends @ruby_token_heredoc_end, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "HeredocEnd" }
  }

  /** A class representing `identifier` tokens. */
  class Identifier extends @ruby_token_identifier, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Identifier" }
  }

  /** A class representing `if` nodes. */
  class If extends @ruby_if, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "If" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_if_def(this, _, result) }

    /** Gets the node corresponding to the field `alternative`. */
    AstNode getAlternative() { ruby_if_alternative(this, result) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreStatement getCondition() { ruby_if_def(this, result, _) }

    /** Gets the node corresponding to the field `consequence`. */
    Then getConsequence() { ruby_if_consequence(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_if_alternative(this, result) or
      ruby_if_def(this, result, _) or
      ruby_if_consequence(this, result)
    }
  }

  /** A class representing `if_modifier` nodes. */
  class IfModifier extends @ruby_if_modifier, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "IfModifier" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_if_modifier_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    UnderscoreStatement getBody() { ruby_if_modifier_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    AstNode getCondition() { ruby_if_modifier_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_if_modifier_def(this, result, _, _) or ruby_if_modifier_def(this, _, result, _)
    }
  }

  /** A class representing `in` nodes. */
  class In extends @ruby_in, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "In" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_in_def(this, _, result) }

    /** Gets the child of this node. */
    UnderscoreArg getChild() { ruby_in_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_in_def(this, result, _) }
  }

  /** A class representing `instance_variable` tokens. */
  class InstanceVariable extends @ruby_token_instance_variable, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "InstanceVariable" }
  }

  /** A class representing `integer` tokens. */
  class Integer extends @ruby_token_integer, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Integer" }
  }

  /** A class representing `interpolation` nodes. */
  class Interpolation extends @ruby_interpolation, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Interpolation" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_interpolation_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_interpolation_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_interpolation_child(this, _, result) }
  }

  /** A class representing `keyword_parameter` nodes. */
  class KeywordParameter extends @ruby_keyword_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "KeywordParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_keyword_parameter_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_keyword_parameter_def(this, result, _) }

    /** Gets the node corresponding to the field `value`. */
    UnderscoreArg getValue() { ruby_keyword_parameter_value(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_keyword_parameter_def(this, result, _) or ruby_keyword_parameter_value(this, result)
    }
  }

  /** A class representing `lambda` nodes. */
  class Lambda extends @ruby_lambda, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Lambda" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_lambda_def(this, _, result) }

    /** Gets the node corresponding to the field `body`. */
    AstNode getBody() { ruby_lambda_def(this, result, _) }

    /** Gets the node corresponding to the field `parameters`. */
    LambdaParameters getParameters() { ruby_lambda_parameters(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_lambda_def(this, result, _) or ruby_lambda_parameters(this, result)
    }
  }

  /** A class representing `lambda_parameters` nodes. */
  class LambdaParameters extends @ruby_lambda_parameters, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "LambdaParameters" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_lambda_parameters_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_lambda_parameters_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_lambda_parameters_child(this, _, result) }
  }

  /** A class representing `left_assignment_list` nodes. */
  class LeftAssignmentList extends @ruby_left_assignment_list, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "LeftAssignmentList" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_left_assignment_list_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_left_assignment_list_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_left_assignment_list_child(this, _, result) }
  }

  /** A class representing `method` nodes. */
  class Method extends @ruby_method, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Method" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_method_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    UnderscoreMethodName getName() { ruby_method_def(this, result, _) }

    /** Gets the node corresponding to the field `parameters`. */
    MethodParameters getParameters() { ruby_method_parameters(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_method_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_method_def(this, result, _) or
      ruby_method_parameters(this, result) or
      ruby_method_child(this, _, result)
    }
  }

  /** A class representing `method_parameters` nodes. */
  class MethodParameters extends @ruby_method_parameters, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "MethodParameters" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_method_parameters_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_method_parameters_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_method_parameters_child(this, _, result) }
  }

  /** A class representing `module` nodes. */
  class Module extends @ruby_module, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Module" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_module_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    AstNode getName() { ruby_module_def(this, result, _) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_module_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_module_def(this, result, _) or ruby_module_child(this, _, result)
    }
  }

  /** A class representing `next` nodes. */
  class Next extends @ruby_next, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Next" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_next_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_next_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_next_child(this, result) }
  }

  /** A class representing `nil` tokens. */
  class Nil extends @ruby_token_nil, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Nil" }
  }

  /** A class representing `operator` tokens. */
  class Operator extends @ruby_token_operator, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Operator" }
  }

  /** A class representing `operator_assignment` nodes. */
  class OperatorAssignment extends @ruby_operator_assignment, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "OperatorAssignment" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_operator_assignment_def(this, _, _, _, result) }

    /** Gets the node corresponding to the field `left`. */
    UnderscoreLhs getLeft() { ruby_operator_assignment_def(this, result, _, _, _) }

    /** Gets the node corresponding to the field `operator`. */
    string getOperator() {
      exists(int value | ruby_operator_assignment_def(this, _, value, _, _) |
        result = "%=" and value = 0
        or
        result = "&&=" and value = 1
        or
        result = "&=" and value = 2
        or
        result = "**=" and value = 3
        or
        result = "*=" and value = 4
        or
        result = "+=" and value = 5
        or
        result = "-=" and value = 6
        or
        result = "/=" and value = 7
        or
        result = "<<=" and value = 8
        or
        result = ">>=" and value = 9
        or
        result = "^=" and value = 10
        or
        result = "|=" and value = 11
        or
        result = "||=" and value = 12
      )
    }

    /** Gets the node corresponding to the field `right`. */
    AstNode getRight() { ruby_operator_assignment_def(this, _, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_operator_assignment_def(this, result, _, _, _) or
      ruby_operator_assignment_def(this, _, _, result, _)
    }
  }

  /** A class representing `optional_parameter` nodes. */
  class OptionalParameter extends @ruby_optional_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "OptionalParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_optional_parameter_def(this, _, _, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_optional_parameter_def(this, result, _, _) }

    /** Gets the node corresponding to the field `value`. */
    UnderscoreArg getValue() { ruby_optional_parameter_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_optional_parameter_def(this, result, _, _) or
      ruby_optional_parameter_def(this, _, result, _)
    }
  }

  /** A class representing `pair` nodes. */
  class Pair extends @ruby_pair, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Pair" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_pair_def(this, _, _, result) }

    /** Gets the node corresponding to the field `key`. */
    AstNode getKey() { ruby_pair_def(this, result, _, _) }

    /** Gets the node corresponding to the field `value`. */
    UnderscoreArg getValue() { ruby_pair_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_pair_def(this, result, _, _) or ruby_pair_def(this, _, result, _)
    }
  }

  /** A class representing `parenthesized_statements` nodes. */
  class ParenthesizedStatements extends @ruby_parenthesized_statements, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ParenthesizedStatements" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_parenthesized_statements_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_parenthesized_statements_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_parenthesized_statements_child(this, _, result) }
  }

  /** A class representing `pattern` nodes. */
  class Pattern extends @ruby_pattern, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Pattern" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_pattern_def(this, _, result) }

    /** Gets the child of this node. */
    AstNode getChild() { ruby_pattern_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_pattern_def(this, result, _) }
  }

  /** A class representing `program` nodes. */
  class Program extends @ruby_program, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Program" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_program_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_program_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_program_child(this, _, result) }
  }

  /** A class representing `range` nodes. */
  class Range extends @ruby_range, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Range" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_range_def(this, _, result) }

    /** Gets the node corresponding to the field `begin`. */
    UnderscoreArg getBegin() { ruby_range_begin(this, result) }

    /** Gets the node corresponding to the field `end`. */
    UnderscoreArg getEnd() { ruby_range_end(this, result) }

    /** Gets the node corresponding to the field `operator`. */
    string getOperator() {
      exists(int value | ruby_range_def(this, value, _) |
        result = ".." and value = 0
        or
        result = "..." and value = 1
      )
    }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_range_begin(this, result) or ruby_range_end(this, result)
    }
  }

  /** A class representing `rational` nodes. */
  class Rational extends @ruby_rational, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Rational" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_rational_def(this, _, result) }

    /** Gets the child of this node. */
    AstNode getChild() { ruby_rational_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_rational_def(this, result, _) }
  }

  /** A class representing `redo` nodes. */
  class Redo extends @ruby_redo, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Redo" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_redo_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_redo_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_redo_child(this, result) }
  }

  /** A class representing `regex` nodes. */
  class Regex extends @ruby_regex, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Regex" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_regex_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_regex_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_regex_child(this, _, result) }
  }

  /** A class representing `rescue` nodes. */
  class Rescue extends @ruby_rescue, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Rescue" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_rescue_def(this, result) }

    /** Gets the node corresponding to the field `body`. */
    Then getBody() { ruby_rescue_body(this, result) }

    /** Gets the node corresponding to the field `exceptions`. */
    Exceptions getExceptions() { ruby_rescue_exceptions(this, result) }

    /** Gets the node corresponding to the field `variable`. */
    ExceptionVariable getVariable() { ruby_rescue_variable(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_rescue_body(this, result) or
      ruby_rescue_exceptions(this, result) or
      ruby_rescue_variable(this, result)
    }
  }

  /** A class representing `rescue_modifier` nodes. */
  class RescueModifier extends @ruby_rescue_modifier, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "RescueModifier" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_rescue_modifier_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    UnderscoreStatement getBody() { ruby_rescue_modifier_def(this, result, _, _) }

    /** Gets the node corresponding to the field `handler`. */
    AstNode getHandler() { ruby_rescue_modifier_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_rescue_modifier_def(this, result, _, _) or ruby_rescue_modifier_def(this, _, result, _)
    }
  }

  /** A class representing `rest_assignment` nodes. */
  class RestAssignment extends @ruby_rest_assignment, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "RestAssignment" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_rest_assignment_def(this, result) }

    /** Gets the child of this node. */
    UnderscoreLhs getChild() { ruby_rest_assignment_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_rest_assignment_child(this, result) }
  }

  /** A class representing `retry` nodes. */
  class Retry extends @ruby_retry, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Retry" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_retry_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_retry_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_retry_child(this, result) }
  }

  /** A class representing `return` nodes. */
  class Return extends @ruby_return, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Return" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_return_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_return_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_return_child(this, result) }
  }

  /** A class representing `right_assignment_list` nodes. */
  class RightAssignmentList extends @ruby_right_assignment_list, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "RightAssignmentList" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_right_assignment_list_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_right_assignment_list_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_right_assignment_list_child(this, _, result) }
  }

  /** A class representing `scope_resolution` nodes. */
  class ScopeResolution extends @ruby_scope_resolution, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ScopeResolution" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_scope_resolution_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    AstNode getName() { ruby_scope_resolution_def(this, result, _) }

    /** Gets the node corresponding to the field `scope`. */
    UnderscorePrimary getScope() { ruby_scope_resolution_scope(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_scope_resolution_def(this, result, _) or ruby_scope_resolution_scope(this, result)
    }
  }

  /** A class representing `self` tokens. */
  class Self extends @ruby_token_self, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Self" }
  }

  /** A class representing `setter` nodes. */
  class Setter extends @ruby_setter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Setter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_setter_def(this, _, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_setter_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_setter_def(this, result, _) }
  }

  /** A class representing `simple_symbol` tokens. */
  class SimpleSymbol extends @ruby_token_simple_symbol, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SimpleSymbol" }
  }

  /** A class representing `singleton_class` nodes. */
  class SingletonClass extends @ruby_singleton_class, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SingletonClass" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_singleton_class_def(this, _, result) }

    /** Gets the node corresponding to the field `value`. */
    UnderscoreArg getValue() { ruby_singleton_class_def(this, result, _) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_singleton_class_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_singleton_class_def(this, result, _) or ruby_singleton_class_child(this, _, result)
    }
  }

  /** A class representing `singleton_method` nodes. */
  class SingletonMethod extends @ruby_singleton_method, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SingletonMethod" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_singleton_method_def(this, _, _, result) }

    /** Gets the node corresponding to the field `name`. */
    UnderscoreMethodName getName() { ruby_singleton_method_def(this, result, _, _) }

    /** Gets the node corresponding to the field `object`. */
    AstNode getObject() { ruby_singleton_method_def(this, _, result, _) }

    /** Gets the node corresponding to the field `parameters`. */
    MethodParameters getParameters() { ruby_singleton_method_parameters(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_singleton_method_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_singleton_method_def(this, result, _, _) or
      ruby_singleton_method_def(this, _, result, _) or
      ruby_singleton_method_parameters(this, result) or
      ruby_singleton_method_child(this, _, result)
    }
  }

  /** A class representing `splat_argument` nodes. */
  class SplatArgument extends @ruby_splat_argument, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SplatArgument" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_splat_argument_def(this, _, result) }

    /** Gets the child of this node. */
    UnderscoreArg getChild() { ruby_splat_argument_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_splat_argument_def(this, result, _) }
  }

  /** A class representing `splat_parameter` nodes. */
  class SplatParameter extends @ruby_splat_parameter, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SplatParameter" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_splat_parameter_def(this, result) }

    /** Gets the node corresponding to the field `name`. */
    Identifier getName() { ruby_splat_parameter_name(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_splat_parameter_name(this, result) }
  }

  /** A class representing `string` nodes. */
  class String extends @ruby_string__, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "String" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_string_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_string_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_string_child(this, _, result) }
  }

  /** A class representing `string_array` nodes. */
  class StringArray extends @ruby_string_array, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "StringArray" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_string_array_def(this, result) }

    /** Gets the `i`th child of this node. */
    BareString getChild(int i) { ruby_string_array_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_string_array_child(this, _, result) }
  }

  /** A class representing `string_content` tokens. */
  class StringContent extends @ruby_token_string_content, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "StringContent" }
  }

  /** A class representing `subshell` nodes. */
  class Subshell extends @ruby_subshell, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Subshell" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_subshell_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_subshell_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_subshell_child(this, _, result) }
  }

  /** A class representing `super` tokens. */
  class Super extends @ruby_token_super, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Super" }
  }

  /** A class representing `superclass` nodes. */
  class Superclass extends @ruby_superclass, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Superclass" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_superclass_def(this, _, result) }

    /** Gets the child of this node. */
    AstNode getChild() { ruby_superclass_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_superclass_def(this, result, _) }
  }

  /** A class representing `symbol_array` nodes. */
  class SymbolArray extends @ruby_symbol_array, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "SymbolArray" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_symbol_array_def(this, result) }

    /** Gets the `i`th child of this node. */
    BareSymbol getChild(int i) { ruby_symbol_array_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_symbol_array_child(this, _, result) }
  }

  /** A class representing `then` nodes. */
  class Then extends @ruby_then, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Then" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_then_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { ruby_then_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_then_child(this, _, result) }
  }

  /** A class representing `true` tokens. */
  class True extends @ruby_token_true, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "True" }
  }

  /** A class representing `unary` nodes. */
  class Unary extends @ruby_unary, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Unary" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_unary_def(this, _, _, result) }

    /** Gets the node corresponding to the field `operand`. */
    AstNode getOperand() { ruby_unary_def(this, result, _, _) }

    /** Gets the node corresponding to the field `operator`. */
    string getOperator() {
      exists(int value | ruby_unary_def(this, _, value, _) |
        result = "!" and value = 0
        or
        result = "+" and value = 1
        or
        result = "-" and value = 2
        or
        result = "defined?" and value = 3
        or
        result = "not" and value = 4
        or
        result = "~" and value = 5
      )
    }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_unary_def(this, result, _, _) }
  }

  /** A class representing `undef` nodes. */
  class Undef extends @ruby_undef, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Undef" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_undef_def(this, result) }

    /** Gets the `i`th child of this node. */
    UnderscoreMethodName getChild(int i) { ruby_undef_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_undef_child(this, _, result) }
  }

  /** A class representing `uninterpreted` tokens. */
  class Uninterpreted extends @ruby_token_uninterpreted, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Uninterpreted" }
  }

  /** A class representing `unless` nodes. */
  class Unless extends @ruby_unless, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Unless" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_unless_def(this, _, result) }

    /** Gets the node corresponding to the field `alternative`. */
    AstNode getAlternative() { ruby_unless_alternative(this, result) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreStatement getCondition() { ruby_unless_def(this, result, _) }

    /** Gets the node corresponding to the field `consequence`. */
    Then getConsequence() { ruby_unless_consequence(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_unless_alternative(this, result) or
      ruby_unless_def(this, result, _) or
      ruby_unless_consequence(this, result)
    }
  }

  /** A class representing `unless_modifier` nodes. */
  class UnlessModifier extends @ruby_unless_modifier, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "UnlessModifier" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_unless_modifier_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    UnderscoreStatement getBody() { ruby_unless_modifier_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    AstNode getCondition() { ruby_unless_modifier_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_unless_modifier_def(this, result, _, _) or ruby_unless_modifier_def(this, _, result, _)
    }
  }

  /** A class representing `until` nodes. */
  class Until extends @ruby_until, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Until" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_until_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    Do getBody() { ruby_until_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreStatement getCondition() { ruby_until_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_until_def(this, result, _, _) or ruby_until_def(this, _, result, _)
    }
  }

  /** A class representing `until_modifier` nodes. */
  class UntilModifier extends @ruby_until_modifier, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "UntilModifier" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_until_modifier_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    UnderscoreStatement getBody() { ruby_until_modifier_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    AstNode getCondition() { ruby_until_modifier_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_until_modifier_def(this, result, _, _) or ruby_until_modifier_def(this, _, result, _)
    }
  }

  /** A class representing `when` nodes. */
  class When extends @ruby_when, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "When" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_when_def(this, result) }

    /** Gets the node corresponding to the field `body`. */
    Then getBody() { ruby_when_body(this, result) }

    /** Gets the node corresponding to the field `pattern`. */
    Pattern getPattern(int i) { ruby_when_pattern(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_when_body(this, result) or ruby_when_pattern(this, _, result)
    }
  }

  /** A class representing `while` nodes. */
  class While extends @ruby_while, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "While" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_while_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    Do getBody() { ruby_while_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    UnderscoreStatement getCondition() { ruby_while_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_while_def(this, result, _, _) or ruby_while_def(this, _, result, _)
    }
  }

  /** A class representing `while_modifier` nodes. */
  class WhileModifier extends @ruby_while_modifier, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "WhileModifier" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_while_modifier_def(this, _, _, result) }

    /** Gets the node corresponding to the field `body`. */
    UnderscoreStatement getBody() { ruby_while_modifier_def(this, result, _, _) }

    /** Gets the node corresponding to the field `condition`. */
    AstNode getCondition() { ruby_while_modifier_def(this, _, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() {
      ruby_while_modifier_def(this, result, _, _) or ruby_while_modifier_def(this, _, result, _)
    }
  }

  /** A class representing `yield` nodes. */
  class Yield extends @ruby_yield, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Yield" }

    /** Gets the location of this element. */
    override Location getLocation() { ruby_yield_def(this, result) }

    /** Gets the child of this node. */
    ArgumentList getChild() { ruby_yield_child(this, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { ruby_yield_child(this, result) }
  }
}

module Erb {
  /** The base class for all AST nodes */
  class AstNode extends @erb_ast_node {
    /** Gets a string representation of this element. */
    string toString() { result = this.getAPrimaryQlClass() }

    /** Gets the location of this element. */
    Location getLocation() { none() }

    /** Gets the parent of this element. */
    AstNode getParent() { erb_ast_node_parent(this, result, _) }

    /** Gets the index of this node among the children of its parent. */
    int getParentIndex() { erb_ast_node_parent(this, _, result) }

    /** Gets a field or child node of this node. */
    AstNode getAFieldOrChild() { none() }

    /** Gets the name of the primary QL class for this element. */
    string getAPrimaryQlClass() { result = "???" }

    /** Gets a comma-separated list of the names of the primary CodeQL classes to which this element belongs. */
    string getPrimaryQlClasses() { result = concat(getAPrimaryQlClass(), ",") }
  }

  /** A token. */
  class Token extends @erb_token, AstNode {
    /** Gets the value of this token. */
    string getValue() { erb_tokeninfo(this, _, result, _) }

    /** Gets the location of this token. */
    override Location getLocation() { erb_tokeninfo(this, _, _, result) }

    /** Gets a string representation of this element. */
    override string toString() { result = getValue() }

    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Token" }
  }

  /** A reserved word. */
  class ReservedWord extends @erb_reserved_word, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "ReservedWord" }
  }

  /** A class representing `code` tokens. */
  class Code extends @erb_token_code, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Code" }
  }

  /** A class representing `comment` tokens. */
  class Comment extends @erb_token_comment, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Comment" }
  }

  /** A class representing `comment_directive` nodes. */
  class CommentDirective extends @erb_comment_directive, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "CommentDirective" }

    /** Gets the location of this element. */
    override Location getLocation() { erb_comment_directive_def(this, _, result) }

    /** Gets the child of this node. */
    Comment getChild() { erb_comment_directive_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { erb_comment_directive_def(this, result, _) }
  }

  /** A class representing `content` tokens. */
  class Content extends @erb_token_content, Token {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Content" }
  }

  /** A class representing `directive` nodes. */
  class Directive extends @erb_directive, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Directive" }

    /** Gets the location of this element. */
    override Location getLocation() { erb_directive_def(this, _, result) }

    /** Gets the child of this node. */
    Code getChild() { erb_directive_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { erb_directive_def(this, result, _) }
  }

  /** A class representing `graphql_directive` nodes. */
  class GraphqlDirective extends @erb_graphql_directive, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "GraphqlDirective" }

    /** Gets the location of this element. */
    override Location getLocation() { erb_graphql_directive_def(this, _, result) }

    /** Gets the child of this node. */
    Code getChild() { erb_graphql_directive_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { erb_graphql_directive_def(this, result, _) }
  }

  /** A class representing `output_directive` nodes. */
  class OutputDirective extends @erb_output_directive, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "OutputDirective" }

    /** Gets the location of this element. */
    override Location getLocation() { erb_output_directive_def(this, _, result) }

    /** Gets the child of this node. */
    Code getChild() { erb_output_directive_def(this, result, _) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { erb_output_directive_def(this, result, _) }
  }

  /** A class representing `template` nodes. */
  class Template extends @erb_template, AstNode {
    /** Gets the name of the primary QL class for this element. */
    override string getAPrimaryQlClass() { result = "Template" }

    /** Gets the location of this element. */
    override Location getLocation() { erb_template_def(this, result) }

    /** Gets the `i`th child of this node. */
    AstNode getChild(int i) { erb_template_child(this, i, result) }

    /** Gets a field or child node of this node. */
    override AstNode getAFieldOrChild() { erb_template_child(this, _, result) }
  }
}
