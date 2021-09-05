# line 28
s!type idl_scope;!!
s!subtype idl_scope_t is idl_scope;.*!!
s!type idl_scope is record!type idl_scope_t is record!

s!type idl_declaration_kind is!type idl_scope_t;\
type idl_declaration_kind is!
