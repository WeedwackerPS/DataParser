types:
  config_equipment:
    seq:
      - id: bit_field
        type: u1
      - id: attach_to
        type: aux_types::string
        if: has_field_attach_to
      - id: sub_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_sub_gadget_id
      - id: sub_attach_to
        type: aux_types::string
        if: has_field_sub_attach_to
      - id: aux_to_trans
        type: aux_types::string
        if: has_field_aux_to_trans
      - id: equip_entity_type
        type: enum__equip_entity_type
        if: has_field_equip_entity_type
      - id: blade_fx
        type: config_blade_element_fx
        if: has_field_blade_fx
      - id: bow_data
        type: config_bow_data
        if: has_field_bow_data
    instances:
      has_field_attach_to: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_sub_gadget_id: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_sub_attach_to: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_aux_to_trans: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_equip_entity_type: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_blade_fx: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_bow_data: # Field №6
        value: (bit_field & 0b1000000) != 0
