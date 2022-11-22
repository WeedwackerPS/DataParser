meta:
  id: config_part_controller
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__control_part_do_on_un_enabled
    - ../../../EnumType/enum__control_part_forward_by
    - ../../../EnumType/enum__control_part_rotate_by
    - ../../../EnumType/enum__control_part_target_type
    - ../vector
seq:
  - id: bit_field
    type: u1
  - id: parts
    type: array_of__disp__config_control_part__length_u
    if: has_field_parts
instances:
  has_field_parts: # Field №0
    value: (bit_field & 0b1) != 0
types:
  array_of__disp__config_control_part__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_control_part
        repeat: expr
        repeat-expr: length.value
  disp__config_control_part:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_control_part
            1: config_control_part_by_ik
            2: config_control_part_by_ikccd
            _: aux_types::error
  config_control_part:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: angular_speed
        type: f4
        if: has_field_angular_speed
      - id: part_root_name
        type: aux_types::string
        if: has_field_part_root_name
      - id: forward_by
        type: enum__control_part_forward_by
        if: has_field_forward_by
      - id: forward_axial_fix
        type: vector
        if: has_field_forward_axial_fix
      - id: rotate_by
        type: enum__control_part_rotate_by
        if: has_field_rotate_by
      - id: do_on_un_eabled
        type: enum__control_part_do_on_un_enabled
        if: has_field_do_on_un_eabled
      - id: forward_by_trans_name
        type: aux_types::string
        if: has_field_forward_by_trans_name
      - id: limit_horizontal
        type: f4
        if: has_field_limit_horizontal
      - id: limit_vertical
        type: f4
        if: has_field_limit_vertical
      - id: target_type
        type: enum__control_part_target_type
        if: has_field_target_type
    instances:
      has_field_angular_speed: # Field №0
        value: (bit_field.value & 0b0000000001) != 0
      has_field_part_root_name: # Field №1
        value: (bit_field.value & 0b0000000010) != 0
      has_field_forward_by: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_forward_axial_fix: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_rotate_by: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_do_on_un_eabled: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_forward_by_trans_name: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_limit_horizontal: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_limit_vertical: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_target_type: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
  config_control_part_by_ik:
    seq:
      - id: base
        type: config_control_part
    instances:
      # Base class fields
      angular_speed:
        value: base.angular_speed
      part_root_name:
        value: base.part_root_name
      forward_by:
        value: base.forward_by
      forward_axial_fix:
        value: base.forward_axial_fix
      rotate_by:
        value: base.rotate_by
      do_on_un_eabled:
        value: base.do_on_un_eabled
      forward_by_trans_name:
        value: base.forward_by_trans_name
      limit_horizontal:
        value: base.limit_horizontal
      limit_vertical:
        value: base.limit_vertical
      target_type:
        value: base.target_type
  config_control_part_by_ikccd:
    seq:
      - id: base
        type: config_control_part_by_ik
      - id: bit_field
        type: u1
      - id: root_name
        type: aux_types::string
        if: has_field_root_name
      - id: final_axial_fix
        type: vector
        if: has_field_final_axial_fix
      - id: vertical_damping
        type: f4
        if: has_field_vertical_damping
    instances:
      has_field_root_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_final_axial_fix: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_vertical_damping: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      angular_speed:
        value: base.angular_speed
      part_root_name:
        value: base.part_root_name
      forward_by:
        value: base.forward_by
      forward_axial_fix:
        value: base.forward_axial_fix
      rotate_by:
        value: base.rotate_by
      do_on_un_eabled:
        value: base.do_on_un_eabled
      forward_by_trans_name:
        value: base.forward_by_trans_name
      limit_horizontal:
        value: base.limit_horizontal
      limit_vertical:
        value: base.limit_vertical
      target_type:
        value: base.target_type
