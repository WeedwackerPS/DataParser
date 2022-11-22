types:
  config_widget_toy_lunch_box_heal_material:
    seq:
      - id: bit_field
        type: u1
      - id: notice_add_hp_materials
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_notice_add_hp_materials
      - id: other_add_hp_materials
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_other_add_hp_materials
    instances:
      has_field_notice_add_hp_materials: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_other_add_hp_materials: # Field №1
        value: (bit_field & 0b10) != 0
