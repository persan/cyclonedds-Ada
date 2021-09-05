# line 24
s!type idl_file;!!
s!subtype idl_file_t is idl_file;.*!!
s!type idl_file is record!type idl_file_t is record!

# Line 36
s!type idl_source;!!
s!subtype idl_source_t is idl_source;.*!!
s!type idl_source is record!type idl_source_t is record!

# Line 50
s!type idl_position is record!type idl_position_t is record!
# Line 64
s!subtype idl_position_t is idl_position;.*!!

# Line 66
s!type idl_location is record!type idl_location_t is record!
s!subtype idl_location_t is idl_location;.*!!



#  Line 77
s!type idl_symbol;!!
s!subtype idl_symbol_t is idl_symbol;.*!!
s!type idl_symbol is record!type idl_symbol_t is record!
