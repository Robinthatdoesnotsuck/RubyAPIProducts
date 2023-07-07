# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `racc` gem.
# Please instead update this file by running `bin/tapioca gem racc`.

# source://racc//lib/racc/parser.rb#23
ParseError = Racc::ParseError

# source://racc//lib/racc/info.rb#16
Racc::Copyright = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/parser.rb#186
class Racc::Parser
  # source://racc//lib/racc/parser.rb#281
  def _racc_do_parse_rb(arg, in_debug); end

  # source://racc//lib/racc/parser.rb#481
  def _racc_do_reduce(arg, act); end

  # common
  #
  # source://racc//lib/racc/parser.rb#384
  def _racc_evalact(act, arg); end

  # source://racc//lib/racc/parser.rb#234
  def _racc_init_sysvars; end

  # source://racc//lib/racc/parser.rb#222
  def _racc_setup; end

  # source://racc//lib/racc/parser.rb#331
  def _racc_yyparse_rb(recv, mid, arg, c_debug); end

  # source://racc//lib/racc/parser.rb#264
  def do_parse; end

  # The method to fetch next token.
  # If you use #do_parse method, you must implement #next_token.
  #
  # The format of return value is [TOKEN_SYMBOL, VALUE].
  # +token-symbol+ is represented by Ruby's symbol by default, e.g. :IDENT
  # for 'IDENT'.  ";" (String) for ';'.
  #
  # The final symbol (End of file) must be false.
  #
  # @raise [NotImplementedError]
  #
  # source://racc//lib/racc/parser.rb#277
  def next_token; end

  # This method is called when a parse error is found.
  #
  # ERROR_TOKEN_ID is an internal ID of token which caused error.
  # You can get string representation of this ID by calling
  # #token_to_str.
  #
  # ERROR_VALUE is a value of error token.
  #
  # value_stack is a stack of symbol values.
  # DO NOT MODIFY this object.
  #
  # This method raises ParseError by default.
  #
  # If this method returns, parsers enter "error recovering mode".
  #
  # @raise [ParseError]
  #
  # source://racc//lib/racc/parser.rb#537
  def on_error(t, val, vstack); end

  # source://racc//lib/racc/parser.rb#586
  def racc_accept; end

  # source://racc//lib/racc/parser.rb#591
  def racc_e_pop(state, tstack, vstack); end

  # source://racc//lib/racc/parser.rb#598
  def racc_next_state(curstate, state); end

  # source://racc//lib/racc/parser.rb#604
  def racc_print_stacks(t, v); end

  # source://racc//lib/racc/parser.rb#613
  def racc_print_states(s); end

  # For debugging output
  #
  # source://racc//lib/racc/parser.rb#560
  def racc_read_token(t, tok, val); end

  # source://racc//lib/racc/parser.rb#573
  def racc_reduce(toks, sim, tstack, vstack); end

  # source://racc//lib/racc/parser.rb#567
  def racc_shift(tok, tstack, vstack); end

  # source://racc//lib/racc/parser.rb#620
  def racc_token2str(tok); end

  # Convert internal ID of token symbol to the string.
  #
  # source://racc//lib/racc/parser.rb#626
  def token_to_str(t); end

  # Exit parser.
  # Return value is +Symbol_Value_Stack[0]+.
  #
  # source://racc//lib/racc/parser.rb#550
  def yyaccept; end

  # Leave error recovering mode.
  #
  # source://racc//lib/racc/parser.rb#555
  def yyerrok; end

  # Enter error recovering mode.
  # This method does not call #on_error.
  #
  # source://racc//lib/racc/parser.rb#544
  def yyerror; end

  # source://racc//lib/racc/parser.rb#326
  def yyparse(recv, mid); end

  class << self
    # source://racc//lib/racc/parser.rb#218
    def racc_runtime_type; end
  end
end

# source://racc//lib/racc/parser.rb#207
Racc::Parser::Racc_Main_Parsing_Routine = T.let(T.unsafe(nil), Symbol)

# source://racc//lib/racc/parser.rb#209
Racc::Parser::Racc_Runtime_Core_Version = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/parser.rb#189
Racc::Parser::Racc_Runtime_Core_Version_R = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/parser.rb#210
Racc::Parser::Racc_Runtime_Type = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/parser.rb#188
Racc::Parser::Racc_Runtime_Version = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/parser.rb#208
Racc::Parser::Racc_YY_Parse_Method = T.let(T.unsafe(nil), Symbol)

# source://racc//lib/racc/parser.rb#183
Racc::Racc_No_Extensions = T.let(T.unsafe(nil), FalseClass)

# source://racc//lib/racc/info.rb#14
Racc::VERSION = T.let(T.unsafe(nil), String)

# source://racc//lib/racc/info.rb#15
Racc::Version = T.let(T.unsafe(nil), String)
