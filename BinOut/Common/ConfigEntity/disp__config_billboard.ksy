meta:
  id: disp__config_billboard
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../EnumType/enum__billboard_offset_type
    - ../../../EnumType/enum__combat_billboard_size
    - ../../../EnumType/enum__progress_billboard_type
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_billboard
        1: config_combat_billboard
        2: config_progress_billboard
        3: config_gadget_icon_billboard
        _: aux_types::error
types:
  config_gadget_icon_billboard:
    seq:
      - id: base
        type: config_billboard
      - id: bit_field
        type: u1
      - id: icon_name
        type: aux_types::string
        if: has_field_icon_name
      - id: title
        type: aux_types::string
        if: has_field_title
    instances:
      has_field_icon_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_title: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      attach_point:
        value: base.attach_point
      offset:
        value: base.offset
      offset_type:
        value: base.offset_type
      radius_offset:
        value: base.radius_offset
      enable_self_adapt:
        value: base.enable_self_adapt
      show_distance:
        value: base.show_distance
      mark_show_distance:
        value: base.mark_show_distance
      name_show_distance:
        value: base.name_show_distance
      kcibjnckcae:
        value: base.kcibjnckcae
  config_progress_billboard:
    seq:
      - id: base
        type: config_billboard
      - id: bit_field
        type: u1
      - id: custom_key_list
        type: array_of__aux_types__string__length_u
        if: has_field_custom_key_list
      - id: max_value
        type: f4
        if: has_field_max_value
      - id: prefab_plugin_name
        type: aux_types::string
        if: has_field_prefab_plugin_name
      - id: type
        type: enum__progress_billboard_type
        if: has_field_type
    instances:
      has_field_custom_key_list: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_max_value: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_prefab_plugin_name: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_type: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      attach_point:
        value: base.attach_point
      offset:
        value: base.offset
      offset_type:
        value: base.offset_type
      radius_offset:
        value: base.radius_offset
      enable_self_adapt:
        value: base.enable_self_adapt
      show_distance:
        value: base.show_distance
      mark_show_distance:
        value: base.mark_show_distance
      name_show_distance:
        value: base.name_show_distance
      kcibjnckcae:
        value: base.kcibjnckcae
  config_combat_billboard:
    seq:
      - id: base
        type: config_billboard
      - id: bit_field
        type: u1
      - id: show_hp_bar
        type: u1
        if: has_field_show_hp_bar
      - id: force_show_distance
        type: f4
        if: has_field_force_show_distance
      - id: size
        type: enum__combat_billboard_size
        if: has_field_size
      - id: shield_bar_only
        type: u1
        if: has_field_shield_bar_only
    instances:
      has_field_show_hp_bar: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_force_show_distance: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_size: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_shield_bar_only: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      attach_point:
        value: base.attach_point
      offset:
        value: base.offset
      offset_type:
        value: base.offset_type
      radius_offset:
        value: base.radius_offset
      enable_self_adapt:
        value: base.enable_self_adapt
      show_distance:
        value: base.show_distance
      mark_show_distance:
        value: base.mark_show_distance
      name_show_distance:
        value: base.name_show_distance
      kcibjnckcae:
        value: base.kcibjnckcae
  config_billboard:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: attach_point
        type: aux_types::string
        if: has_field_attach_point
      - id: offset
        type: vector
        if: has_field_offset
      - id: offset_type
        type: enum__billboard_offset_type
        if: has_field_offset_type
      - id: radius_offset
        type: f4
        if: has_field_radius_offset
      - id: enable_self_adapt
        type: u1
        if: has_field_enable_self_adapt
      - id: show_distance
        type: f4
        if: has_field_show_distance
      - id: mark_show_distance
        type: f4
        if: has_field_mark_show_distance
      - id: name_show_distance
        type: f4
        if: has_field_name_show_distance
      - id: kcibjnckcae
        type: u1
        if: has_field_kcibjnckcae
    instances:
      has_field_attach_point: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_offset: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_offset_type: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_radius_offset: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_enable_self_adapt: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_show_distance: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_mark_show_distance: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_name_show_distance: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_kcibjnckcae: # Field №8
        value: (bit_field.value & 0b100000000) != 0
