types:
  config_widget_toy_anchor_point:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: cool_down
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down
      - id: lasting_time
        type: aux_types::vlq_base128_le_u
        if: has_field_lasting_time
      - id: max_count_in_scene
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_in_scene
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: invalid_scene_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_invalid_scene_ids
    instances:
      has_field_cool_down: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_lasting_time: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_max_count_in_scene: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_gadget_id: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_invalid_scene_ids: # Field №4
        value: (bit_field & 0b10000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
