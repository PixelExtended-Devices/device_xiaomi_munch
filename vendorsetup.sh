echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf device/xiaomi/sm8250-common
rm -rf kernel/xiaomi
rm -rf vendor/xiaomi

echo 'Cloning DT-Common tree [1/7]'
# Device Tree Common
git clone --depth=1 https://github.com/PixelExtended-Devices/munch_device_xiaomi_sm8250-common -b trece device/xiaomi/sm8250-common

echo 'Cloning Kernel tree [2/7]'
# Kernel Tree
git clone --depth=1 https://github.com/PixelExtended-Devices/kernel_xiaomi_sm8250.git -b trece kernel/xiaomi/sm8250

echo 'Cloning Vendor tree [3/7]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Vincent4440/vendor_xiaomi_munch -b trece vendor/xiaomi/munch

echo 'Cloning Vendor-Common tree [4/7]'
# Vendor-Common Tree
git clone --depth=1 https://gitlab.com/Vincent4440/vendor_xiaomi_sm8250-common.git -b trece vendor/xiaomi/sm8250-common

echo 'Cloning Firmware [5/7]'
# Firmware
git clone --depth=1 https://gitlab.com/Ar5646L/vendor_xiaomi_munch-firmware.git -b thirteen-global vendor/xiaomi/munch-firmware

echo 'Cloning Prelude Clang [6/7]'
# Prelude Clang
git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang.git prebuilts/clang/host/linux-x86/clang-prelude

echo 'Cloning hardware_xiaomi [7/7]'
# hardware_xiaomi
git clone https://github.com/PixelExperience/hardware_xiaomi.git -b thirteen hardware/xiaomi
