# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/content-0.1.47

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/content-0.1.47/build

# Utility rule file for generate-internal-templated-content-debian9.

# Include the progress variables for this target.
include debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/progress.make

debian9/CMakeFiles/generate-internal-templated-content-debian9: debian9/templated-content-debian9

debian9/templated-content-debian9: ../build-scripts/build_templated_content.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[debian9-content] generating templated content"
	cd /root/content-0.1.47/build/debian9 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/build_templated_content.py --resolved-rules-dir /root/content-0.1.47/build/debian9/rules --templates-dir /root/content-0.1.47/shared/templates --checks-dir /root/content-0.1.47/build/debian9/checks --remediations-dir /root/content-0.1.47/build/debian9/fixes_from_templates --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/debian9/product.yml
	cd /root/content-0.1.47/build/debian9 && /usr/bin/cmake -E touch /root/content-0.1.47/build/debian9/templated-content-debian9

generate-internal-templated-content-debian9: debian9/CMakeFiles/generate-internal-templated-content-debian9
generate-internal-templated-content-debian9: debian9/templated-content-debian9
generate-internal-templated-content-debian9: debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/build.make
.PHONY : generate-internal-templated-content-debian9

# Rule to build all files generated by this target.
debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/build: generate-internal-templated-content-debian9
.PHONY : debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/build

debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/clean:
	cd /root/content-0.1.47/build/debian9 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-templated-content-debian9.dir/cmake_clean.cmake
.PHONY : debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/clean

debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/debian9 /root/content-0.1.47/build /root/content-0.1.47/build/debian9 /root/content-0.1.47/build/debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : debian9/CMakeFiles/generate-internal-templated-content-debian9.dir/depend
