types:
  token_json_path:
    seq:
      - id: bit_field
        type: u1
      - id: op
        type: enum__logic_operation
        if: has_field_op
      - id: inherit_from
        type: aux_types::string
        if: has_field_inherit_from
      - id: has_properties
        type: array_of__aux_types__string__length_u
        if: has_field_has_properties
      - id: paths
        type: array_of__aux_types__string__length_u
        if: has_field_paths
      - id: children
        type: array_of__token_json_path__length_u
        if: has_field_children
    instances:
      has_field_op: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_inherit_from: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_has_properties: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_paths: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_children: # Field №4
        value: (bit_field & 0b10000) != 0
