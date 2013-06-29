# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Custom OTA commands for galaxys4gmtd"""

import common
import os
import shutil

TARGET_DIR = os.getenv('OUT')
UTILITIES_DIR = os.path.join(TARGET_DIR, 'utilities')

def FullOTA_Assertions(info):
  info.output_zip.write(os.path.join(TARGET_DIR, "modem.bin"), "modem.bin")
  info.output_zip.write(os.path.join(TARGET_DIR, "updater.sh"), "updater.sh")
  info.output_zip.write(os.path.join(UTILITIES_DIR, "busybox"), "busybox")
  info.output_zip.write(os.path.join(UTILITIES_DIR, "flash_image"), "flash_image")
  info.output_zip.write(os.path.join(UTILITIES_DIR, "erase_image"), "erase_image")
  info.output_zip.write(os.path.join(UTILITIES_DIR, "bml_over_mtd"), "bml_over_mtd")
  info.output_zip.write(os.path.join(TARGET_DIR, "bml_over_mtd.sh"), "bml_over_mtd.sh")

  info.script.AppendExtra(
        ('package_extract_file("modem.bin", "/tmp/modem.bin");\n'
         'set_perm(0, 0, 0777, "/tmp/modem.bin");'))
  info.script.AppendExtra(
        ('package_extract_file("updater.sh", "/tmp/updater.sh");\n'
         'set_perm(0, 0, 0777, "/tmp/updater.sh");'))
  info.script.AppendExtra(
        ('package_extract_file("busybox", "/tmp/busybox");\n'
         'set_perm(0, 0, 0777, "/tmp/busybox");'))
  info.script.AppendExtra(
        ('package_extract_file("flash_image", "/tmp/flash_image");\n'
         'set_perm(0, 0, 0777, "/tmp/flash_image");'))
  info.script.AppendExtra(
        ('package_extract_file("erase_image", "/tmp/erase_image");\n'
         'set_perm(0, 0, 0777, "/tmp/erase_image");'))
  info.script.AppendExtra(
        ('package_extract_file("bml_over_mtd", "/tmp/bml_over_mtd");\n'
         'set_perm(0, 0, 0777, "/tmp/bml_over_mtd");'))
  info.script.AppendExtra(
        ('package_extract_file("bml_over_mtd.sh", "/tmp/bml_over_mtd.sh");\n'
         'set_perm(0, 0, 0777, "/tmp/bml_over_mtd.sh");'))

  info.script.AppendExtra('package_extract_file("boot.img", "/tmp/boot.img");')
  info.script.AppendExtra('assert(run_program("/tmp/updater.sh") == 0);')

  # Make common releasetools copy boot.img verbatim
  kernel_path = os.path.join(info.input_tmp, "BOOT", "kernel")
  prebuilt_dir = os.path.join(info.input_tmp, "BOOTABLE_IMAGES")
  prebuilt_path = os.path.join(prebuilt_dir, "boot.img")
  os.mkdir(prebuilt_dir)
  shutil.copyfile(kernel_path, prebuilt_path)


def FullOTA_InstallEnd(info):
  # Remove writing boot.img from script (we do it in updater.sh)
  info.script.script = [cmd for cmd in info.script.script if not "write_raw_image" in cmd]
