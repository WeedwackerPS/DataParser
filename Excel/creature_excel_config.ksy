meta:
  id: creature_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/fight_prop_grow_config
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: hp_base
    type: f4
    if: has_field_hp_base
  - id: attack_base
    type: f4
    if: has_field_attack_base
  - id: defense_base
    type: f4
    if: has_field_defense_base
  - id: critical
    type: f4
    if: has_field_critical
  - id: anti_critical
    type: f4
    if: has_field_anti_critical
  - id: critical_hurt
    type: f4
    if: has_field_critical_hurt
  - id: fire_sub_hurt
    type: f4
    if: has_field_fire_sub_hurt
  - id: grass_sub_hurt
    type: f4
    if: has_field_grass_sub_hurt
  - id: water_sub_hurt
    type: f4
    if: has_field_water_sub_hurt
  - id: elec_sub_hurt
    type: f4
    if: has_field_elec_sub_hurt
  - id: wind_sub_hurt
    type: f4
    if: has_field_wind_sub_hurt
  - id: ice_sub_hurt
    type: f4
    if: has_field_ice_sub_hurt
  - id: rock_sub_hurt
    type: f4
    if: has_field_rock_sub_hurt
  - id: fire_add_hurt
    type: f4
    if: has_field_fire_add_hurt
  - id: grass_add_hurt
    type: f4
    if: has_field_grass_add_hurt
  - id: water_add_hurt
    type: f4
    if: has_field_water_add_hurt
  - id: elec_add_hurt
    type: f4
    if: has_field_elec_add_hurt
  - id: wind_add_hurt
    type: f4
    if: has_field_wind_add_hurt
  - id: ice_add_hurt
    type: f4
    if: has_field_ice_add_hurt
  - id: rock_add_hurt
    type: f4
    if: has_field_rock_add_hurt
  - id: prop_grow_curves
    type: array_of__fight_prop_grow_config__length_u
    if: has_field_prop_grow_curves
  - id: element_mastery
    type: f4
    if: has_field_element_mastery
  - id: physical_sub_hurt
    type: f4
    if: has_field_physical_sub_hurt
  - id: physical_add_hurt
    type: f4
    if: has_field_physical_add_hurt
  - id: prefab_path_ragdoll_hash_pre
    type: s1
    if: has_field_prefab_path_ragdoll_hash
  - id: prefab_path_ragdoll_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_ragdoll_hash
instances:
    has_field_hp_base: # Field №0
      value: (bit_field.value & 0b00000000000000000000000001) != 0
    has_field_attack_base: # Field №1
      value: (bit_field.value & 0b00000000000000000000000010) != 0
    has_field_defense_base: # Field №2
      value: (bit_field.value & 0b00000000000000000000000100) != 0
    has_field_critical: # Field №3
      value: (bit_field.value & 0b00000000000000000000001000) != 0
    has_field_anti_critical: # Field №4
      value: (bit_field.value & 0b00000000000000000000010000) != 0
    has_field_critical_hurt: # Field №5
      value: (bit_field.value & 0b00000000000000000000100000) != 0
    has_field_fire_sub_hurt: # Field №6
      value: (bit_field.value & 0b00000000000000000001000000) != 0
    has_field_grass_sub_hurt: # Field №7
      value: (bit_field.value & 0b00000000000000000010000000) != 0
    has_field_water_sub_hurt: # Field №8
      value: (bit_field.value & 0b00000000000000000100000000) != 0
    has_field_elec_sub_hurt: # Field №9
      value: (bit_field.value & 0b00000000000000001000000000) != 0
    has_field_wind_sub_hurt: # Field №10
      value: (bit_field.value & 0b00000000000000010000000000) != 0
    has_field_ice_sub_hurt: # Field №11
      value: (bit_field.value & 0b00000000000000100000000000) != 0
    has_field_rock_sub_hurt: # Field №12
      value: (bit_field.value & 0b00000000000001000000000000) != 0
    has_field_fire_add_hurt: # Field №13
      value: (bit_field.value & 0b00000000000010000000000000) != 0
    has_field_grass_add_hurt: # Field №14
      value: (bit_field.value & 0b00000000000100000000000000) != 0
    has_field_water_add_hurt: # Field №15
      value: (bit_field.value & 0b00000000001000000000000000) != 0
    has_field_elec_add_hurt: # Field №16
      value: (bit_field.value & 0b00000000010000000000000000) != 0
    has_field_wind_add_hurt: # Field №17
      value: (bit_field.value & 0b00000000100000000000000000) != 0
    has_field_ice_add_hurt: # Field №18
      value: (bit_field.value & 0b00000001000000000000000000) != 0
    has_field_rock_add_hurt: # Field №19
      value: (bit_field.value & 0b00000010000000000000000000) != 0
    has_field_prop_grow_curves: # Field №20
      value: (bit_field.value & 0b00000100000000000000000000) != 0
    has_field_element_mastery: # Field №21
      value: (bit_field.value & 0b00001000000000000000000000) != 0
    has_field_physical_sub_hurt: # Field №22
      value: (bit_field.value & 0b00010000000000000000000000) != 0
    has_field_physical_add_hurt: # Field №23
      value: (bit_field.value & 0b00100000000000000000000000) != 0
    has_field_prefab_path_ragdoll_hash: # Field №24
      value: (bit_field.value & 0b01000000000000000000000000) != 0
types:
  array_of__fight_prop_grow_config__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: fight_prop_grow_config
        repeat: expr
        repeat-expr: length.value