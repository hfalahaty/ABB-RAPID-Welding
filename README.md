# ABB RAPID Welding Robot Programs

Personal collection of ABB IRC5 RAPID modules for welding automation.

## Contents

The repository preserves the uploaded RAPID module filenames and source content.

### General and utility modules
- `AAA_General.mod`
- `A_Railing_Sync.mod`
- `A_LinearWeld.mod`

### Program and part modules
- `A_12070_27.mod`
- `A_15542_6.mod`
- `A_15971.mod`
- `A_17024.mod`
- `A_17071.mod`
- `Gealender_SFRJ_mns_ST2.mod`

### Railing modules
- `A_15542_1_Railing_St1_LL.mod`
- `A_15542_1_Railing_St1_LS.mod`
- `A_15542_1_Railing_St2_LS.mod`
- `A_Railing_St1_ALA.mod`
- `A_Railing_St1_ASA.mod`
- `A_Railing_St1_SS.mod`
- `A_Railing_St2_LL.mod`
- `A_Railing_St2_SS.mod`

### Test module
- `AAA_Code_Test.mod`

## Important notes

- These are source modules, not a complete ABB RobotStudio or IRC5 system backup.
- Required system configuration, I/O mappings, tools, workobjects, external axes, welding equipment configuration, and dependent modules may need to be configured separately.
- The modules have not been compiled or validated on a robot controller as part of this publication.
- Review the source and adapt all station-specific positions and configuration before use.
- No license is granted by this repository unless a separate license file is added. All rights remain with the author.

## File encoding

Most modules are UTF-8. `Gealender_SFRJ_mns_ST2.mod` is preserved as ISO-8859-1 text to avoid changing its original bytes.