meta:
  id: avatar_skill_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__element_type
    - ../EnumType/enum__monitor_type
    - ../EnumType/enum__skill_drag
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: skill_icon
    type: aux_types::string
    if: has_field_skill_icon
  - id: is_ranged
    type: u1
    if: has_field_is_ranged
  - id: cd_time
    type: f4
    if: has_field_cd_time
  - id: ignore_cd_minus_ratio
    type: u1
    if: has_field_ignore_cd_minus_ratio
  - id: cost_stamina
    type: f4
    if: has_field_cost_stamina
  - id: cost_elem_type
    type: enum__element_type
    if: has_field_cost_elem_type
  - id: cost_elem_val
    type: f4
    if: has_field_cost_elem_val
  - id: max_charge_num
    type: aux_types::vlq_base128_le_s
    if: has_field_max_charge_num
  - id: trigger_id
    type: aux_types::vlq_base128_le_s
    if: has_field_trigger_id
  - id: lock_shape
    type: aux_types::string
    if: has_field_lock_shape
  - id: lock_weight_params
    type: array_of__f4__length_u
    if: has_field_lock_weight_params
  - id: is_attack_camera_lock
    type: u1
    if: has_field_is_attack_camera_lock
  - id: drag_type
    type: enum__skill_drag
    if: has_field_drag_type
  - id: show_icon_arrow
    type: u1
    if: has_field_show_icon_arrow
  - id: need_monitor
    type: enum__monitor_type
    if: has_field_need_monitor
  - id: default_locked
    type: u1
    if: has_field_default_locked
  - id: buff_icon
    type: aux_types::string
    if: has_field_buff_icon
  - id: proud_skill_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_proud_skill_group_id
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: energy_min
    type: f4
    if: has_field_energy_min
  - id: force_can_do_skill
    type: u1
    if: has_field_force_can_do_skill
  - id: cd_slot
    type: aux_types::vlq_base128_le_u
    if: has_field_cd_slot
  - id: need_store
    type: u1
    if: has_field_need_store
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ability_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_skill_icon: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_ranged: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cd_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_ignore_cd_minus_ratio: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cost_stamina: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_cost_elem_type: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_cost_elem_val: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_max_charge_num: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_trigger_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_lock_shape: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_lock_weight_params: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_is_attack_camera_lock: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_drag_type: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_show_icon_arrow: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_need_monitor: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_default_locked: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_buff_icon: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_proud_skill_group_id: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_global_value_key: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_energy_min: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_force_can_do_skill: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_cd_slot: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_need_store: # Field №26
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
