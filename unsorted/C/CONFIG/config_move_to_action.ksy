types:
  config_move_to_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: move_type
        type: enum__move_to_type
        if: has_field_move_type
      - id: route_list
        type: array_of__vector__length_u
        if: has_field_route_list
      - id: exactly_move
        type: u1
        if: has_field_exactly_move
    instances:
      has_field_move_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_route_list: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_exactly_move: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
