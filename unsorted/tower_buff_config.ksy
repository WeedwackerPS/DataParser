types:
  tower_buff_config:
    seq:
      - id: bit_field
        type: u1
      - id: tower_buff_list
        type: array_of__tower_buff__length_u
        if: has_field_tower_buff_list
    instances:
      has_field_tower_buff_list: # Field №0
        value: (bit_field & 0b1) != 0
