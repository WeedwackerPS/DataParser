meta:
  id: entity_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: prefab_path_hash_pre
    type: s1
    if: has_field_prefab_path_hash
  - id: prefab_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_hash
  - id: prefab_path_remote_hash_pre
    type: s1
    if: has_field_prefab_path_remote_hash
  - id: prefab_path_remote_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_remote_hash
  - id: controller_path_hash_pre
    type: s1
    if: has_field_controller_path_hash
  - id: controller_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_controller_path_hash
  - id: controller_path_remote_hash_pre
    type: s1
    if: has_field_controller_path_remote_hash
  - id: controller_path_remote_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_controller_path_remote_hash
  - id: camp_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_id
  - id: lod_pattern_name
    type: aux_types::string
    if: has_field_lod_pattern_name
instances:
      has_field_id: # Field №0
        value: (bit_field.value & 0b000000000001) != 0
      has_field_name: # Field №1
        value: (bit_field.value & 0b000000000010) != 0
      has_field_prefab_path_hash: # Field №2
        value: (bit_field.value & 0b000000000100) != 0
      has_field_prefab_path_remote_hash: # Field №3
        value: (bit_field.value & 0b000000001000) != 0
      has_field_controller_path_hash: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_controller_path_remote_hash: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_camp_id: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_lod_pattern_name: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
