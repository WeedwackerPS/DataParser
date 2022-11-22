types:
  config_ability_node:
    seq:
      - id: bit_field
        type: u1
      - id: config
        type: aux_types::string
        if: has_field_config
      - id: order_id
        type: aux_types::vlq_base128_le_u
        if: has_field_order_id
      - id: related_order_id
        type: aux_types::vlq_base128_le_u
        if: has_field_related_order_id
      - id: color_tag
        type: aux_types::string
        if: has_field_color_tag
      - id: tags
        type: array_of__aux_types__string__length_u
        if: has_field_tags
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: data
        type: array_of__config_ability_data__length_u
        if: has_field_data
      - id: children
        type: array_of__config_ability_node__length_u
        if: has_field_children
    instances:
      has_field_config: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_order_id: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_related_order_id: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_color_tag: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_tags: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_name: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_data: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_children: # Field №7
        value: (bit_field & 0b10000000) != 0
