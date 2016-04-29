#
# Copyright 2012-2014 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "popt"
default_version "1.16"

dependency "config_guess"

source url: "http://rpm5.org/files/popt/popt-1.16.tar.gz",
       md5: "3743beefa3dd6247a73f8f7a32c14c33"

relative_path "popt-1.16"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  update_config_guess

  # --disable-nls => Disable localization support.
  command "./configure" \
          " --prefix=#{install_dir}/embedded" \
          " --disable-nls", env: env

  command "make -j #{workers}", env: env
  command "make install", env: env
end
