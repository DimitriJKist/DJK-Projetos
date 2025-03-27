################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
DSP2803x_CodeStartBranch.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_CpuTimers.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_CpuTimers.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_DefaultIsr.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_DefaultIsr.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_ECap.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_ECap.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_EPwm.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_EPwm.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_GlobalVariableDefs.obj: C:/Users/dimit/OneDrive/DSP2803x_headers/source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_PieCtrl.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_PieCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_PieVect.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_PieVect.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_SysCtrl.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_SysCtrl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

DSP2803x_usDelay.obj: C:/Users/dimit/OneDrive/DSP2803x_common/source/DSP2803x_usDelay.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccs2010/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --include_path="/packages/ti/xdais" --include_path="C:/Users/dimit/OneDrive/DSP2803x_headers/include" --include_path="C:/Users/dimit/OneDrive/DSP2803x_common/include" --include_path="C:/libs/math/IQmath/v160/include" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --diag_suppress=10063 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


