types:
  config_widget_toy_clint_collector:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: target_type
        type: enum__collector_type
        if: has_field_target_type
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: recharge_points
        type: aux_types::vlq_base128_le_u
        if: has_field_recharge_points
      - id: max_points
        type: aux_types::vlq_base128_le_u
        if: has_field_max_points
      - id: effect_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_effect_gadget_id
      - id: use_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_use_gadget_id
      - id: allow_other_world
        type: u1
        if: has_field_allow_other_world
    instances:
      has_field_target_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_element_type: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_recharge_points: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_max_points: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_effect_gadget_id: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_use_gadget_id: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_allow_other_world: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
