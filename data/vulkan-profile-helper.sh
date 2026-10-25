#!/usr/bin/env bash

set -ex

cd in/pc-hardware/vulkan-profiles

function download_amd_ryzen_9_7900x_12_core_processor_radv_raphael_mendocino() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD%20Ryzen%209%207900X%2012-Core%20Processor%20(RADV%20RAPHAEL_MENDOCINO)
    download_dir=amd_ryzen_9_7900x_12_core_processor_radv_raphael_mendocino
    mkdir -p $download_dir

    file_path="$download_dir/49118.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49118'
}

function download_amd_radeon_780m_graphics_radv_phoenix() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD+Radeon+780M+Graphics+%28RADV+PHOENIX%29
    download_dir=amd_radeon_780m_graphics_radv_phoenix
    mkdir -p $download_dir
    
    file_path="$download_dir/48797.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48797'
    file_path="$download_dir/48440.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48440'
    file_path="$download_dir/48273.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48273'
    file_path="$download_dir/48245.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48245'
}

function download_amd_radeon_rx_7900_gre_radv_navi31() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD+Radeon+RX+7900+GRE+%28RADV+NAVI31%29
    download_dir=amd_radeon_rx_7900_gre_radv_navi31
    mkdir -p $download_dir

    file_path="$download_dir/47746.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47746'
}

function download_amd_radeon_rx_9070_xt_radv_gfx1201() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD+Radeon+RX+9070+XT+%28RADV+GFX1201%29
    download_dir=amd_radeon_rx_9070_xt_radv_gfx1201
    mkdir -p $download_dir

    file_path="$download_dir/40415.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40415'
    file_path="$download_dir/38575.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38575'
}

function download_nvidia_geforce_rtx_3050() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+3050
    download_dir=nvidia_geforce_rtx_3050
    mkdir -p $download_dir

    file_path="$download_dir/14082.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14082'
    file_path="$download_dir/18458.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=18458'
    file_path="$download_dir/27099.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27099'
    file_path="$download_dir/45256.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45256'
}

function download_nvidia_geforce_rtx_3060() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+3060
    download_dir=nvidia_geforce_rtx_3060
    mkdir -p $download_dir

    file_path="$download_dir/11309.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11309'
    file_path="$download_dir/12838.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=12838'
    file_path="$download_dir/13354.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=13354'
    file_path="$download_dir/16949.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16949'
    file_path="$download_dir/16961.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16961'
    file_path="$download_dir/16967.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16967'
}

function download_nvidia_geforce_rtx_3070_ti() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+3070+Ti
    download_dir=nvidia_geforce_rtx_3070_ti
    mkdir -p $download_dir

    file_path="$download_dir/11804.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11804'
    file_path="$download_dir/17017.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17017'
    file_path="$download_dir/17368.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17368'
    file_path="$download_dir/21460.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=21460'
    file_path="$download_dir/22835.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=22835'
    file_path="$download_dir/23796.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=23796'
    file_path="$download_dir/24825.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=24825'
    file_path="$download_dir/27833.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27833'
    file_path="$download_dir/36917.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=36917'
    file_path="$download_dir/43333.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43333'
}

function download_nvidia_geforce_rtx_3080() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+3080
    download_dir=nvidia_geforce_rtx_3080
    mkdir -p $download_dir

    file_path="$download_dir/10993.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=10993'
    file_path="$download_dir/11121.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11121'
    file_path="$download_dir/11209.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11209'
    file_path="$download_dir/11593.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11593'
    file_path="$download_dir/11741.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11741'
    file_path="$download_dir/11885.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11885'
    file_path="$download_dir/12333.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=12333'
    file_path="$download_dir/13101.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=13101'
    file_path="$download_dir/14003.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14003'
    file_path="$download_dir/14287.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14287'
    file_path="$download_dir/14820.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14820'
    file_path="$download_dir/15202.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=15202'
    file_path="$download_dir/15529.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=15529'
    file_path="$download_dir/15677.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=15677'
    file_path="$download_dir/15881.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=15881'
    file_path="$download_dir/16617.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16617'
}

function download_nvidia_geforce_rtx_3090() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+3090
    download_dir=nvidia_geforce_rtx_3090
    mkdir -p $download_dir

    file_path="$download_dir/10934.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=10934'
    file_path="$download_dir/11141.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11141'
    file_path="$download_dir/11998.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=11998'
    file_path="$download_dir/12163.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=12163'
    file_path="$download_dir/13136.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=13136'
    file_path="$download_dir/13445.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=13445'
    file_path="$download_dir/13852.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=13852'
    file_path="$download_dir/14010.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14010'
    file_path="$download_dir/14226.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=14226'
    file_path="$download_dir/16159.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16159'
    file_path="$download_dir/16704.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16704'
    file_path="$download_dir/17889.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17889'
    file_path="$download_dir/18882.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=18882'
    file_path="$download_dir/25742.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=25742'
    file_path="$download_dir/27180.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27180'
    file_path="$download_dir/29266.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=29266'
    file_path="$download_dir/31462.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=31462'
    file_path="$download_dir/34035.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=34035'
    file_path="$download_dir/34114.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=34114'
    file_path="$download_dir/34724.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=34724'
    file_path="$download_dir/35308.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35308'
    file_path="$download_dir/38616.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38616'
    file_path="$download_dir/39533.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39533'
    file_path="$download_dir/40597.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40597'
    file_path="$download_dir/41612.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41612'
    file_path="$download_dir/42794.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42794'
    file_path="$download_dir/43705.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43705'
    file_path="$download_dir/45605.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45605'
    file_path="$download_dir/46847.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46847'
    file_path="$download_dir/47870.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47870'
    file_path="$download_dir/48045.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48045'
    file_path="$download_dir/48685.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48685'
}

function download_nvidia_geforce_rtx_4070() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+4070
    download_dir=nvidia_geforce_rtx_4070
    mkdir -p $download_dir

    file_path="$download_dir/20369.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20369'
    file_path="$download_dir/20370.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20370'
    file_path="$download_dir/20402.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20402'
    file_path="$download_dir/20404.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20404'
    file_path="$download_dir/20436.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20436'
    file_path="$download_dir/20498.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20498'
    file_path="$download_dir/20668.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20668'
    file_path="$download_dir/20672.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20672'
    file_path="$download_dir/21146.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=21146'
    file_path="$download_dir/21150.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=21150'
    file_path="$download_dir/21923.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=21923'
    file_path="$download_dir/22390.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=22390'
    file_path="$download_dir/23144.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=23144'
    file_path="$download_dir/23968.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=23968'
    file_path="$download_dir/24257.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=24257'
    file_path="$download_dir/24322.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=24322'
    file_path="$download_dir/24429.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=24429'
    file_path="$download_dir/24960.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=24960'
    file_path="$download_dir/26270.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=26270'
    file_path="$download_dir/26621.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=26621'
    file_path="$download_dir/26623.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=26623'
    file_path="$download_dir/27127.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27127'
    file_path="$download_dir/27878.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27878'
    file_path="$download_dir/28423.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=28423'
    file_path="$download_dir/28594.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=28594'
    file_path="$download_dir/28790.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=28790'
    file_path="$download_dir/31424.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=31424'
    file_path="$download_dir/31507.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=31507'
    file_path="$download_dir/31508.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=31508'
    file_path="$download_dir/32132.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=32132'
    file_path="$download_dir/32421.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=32421'
    file_path="$download_dir/32422.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=32422'
    file_path="$download_dir/33096.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=33096'
    file_path="$download_dir/33101.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=33101'
    file_path="$download_dir/33513.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=33513'
    file_path="$download_dir/33606.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=33606'
    file_path="$download_dir/35284.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35284'
    file_path="$download_dir/37173.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37173'
    file_path="$download_dir/37174.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37174'
    file_path="$download_dir/37175.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37175'
    file_path="$download_dir/37176.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37176'
    file_path="$download_dir/37178.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37178'
    file_path="$download_dir/37204.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37204'
    file_path="$download_dir/37210.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37210'
    file_path="$download_dir/37427.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37427'
    file_path="$download_dir/38231.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38231'
    file_path="$download_dir/38236.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38236'
    file_path="$download_dir/38363.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38363'
    file_path="$download_dir/39889.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39889'
    file_path="$download_dir/39952.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39952'
    file_path="$download_dir/39995.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39995'
    file_path="$download_dir/41698.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41698'
    file_path="$download_dir/43369.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43369'
    file_path="$download_dir/44715.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=44715'
    file_path="$download_dir/44722.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=44722'
    file_path="$download_dir/44799.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=44799'
    file_path="$download_dir/47067.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47067'
    file_path="$download_dir/47543.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47543'
    file_path="$download_dir/47609.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47609'
    file_path="$download_dir/48600.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48600'
    file_path="$download_dir/48601.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48601'
    file_path="$download_dir/48607.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48607'
    file_path="$download_dir/48608.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48608'
    file_path="$download_dir/48851.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48851'
    file_path="$download_dir/48921.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48921'
}

function download_nvidia_geforce_rtx_4070_ti() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA%20GeForce%20RTX%204070%20Ti
    download_dir=nvidia_geforce_rtx_4070_ti
    mkdir -p $download_dir

    file_path="$download_dir/49077.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49077'
}

function download_nvidia_geforce_rtx_4080() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+4080
    download_dir=nvidia_geforce_rtx_4080
    mkdir -p $download_dir

    file_path="$download_dir/17459.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17459'
    file_path="$download_dir/17703.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17703'
    file_path="$download_dir/17933.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17933'
    file_path="$download_dir/17965.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17965'
    file_path="$download_dir/19170.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=19170'
    file_path="$download_dir/32027.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=32027'
    file_path="$download_dir/32457.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=32457'
    file_path="$download_dir/33208.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=33208'
    file_path="$download_dir/34853.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=34853'
    file_path="$download_dir/36608.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=36608'
    file_path="$download_dir/41624.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41624'
    file_path="$download_dir/45597.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45597'
    file_path="$download_dir/47328.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47328'
    file_path="$download_dir/48526.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48526'
    file_path="$download_dir/49142.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49142'
    file_path="$download_dir/49180.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49180'
}

function download_nvidia_geforce_rtx_5060() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+5060
    download_dir=nvidia_geforce_rtx_5060
    mkdir -p $download_dir

    file_path="$download_dir/40081.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40081'
    file_path="$download_dir/42005.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42005'
    file_path="$download_dir/42869.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42869'
    file_path="$download_dir/44067.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=44067'
    file_path="$download_dir/47429.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47429'
}

function download_nvidia_geforce_rtx_5070() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+5070
    download_dir=nvidia_geforce_rtx_5070
    mkdir -p $download_dir

    file_path="$download_dir/40105.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40105'
    file_path="$download_dir/47476.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47476'
    file_path="$download_dir/48100.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48100'
    file_path="$download_dir/48438.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48438'
    file_path="$download_dir/48707.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48707'
    file_path="$download_dir/48837.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48837'
}

function download_nvidia_geforce_rtx_5080() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+5080
    download_dir=nvidia_geforce_rtx_5080
    mkdir -p $download_dir

    file_path="$download_dir/41200.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41200'
    file_path="$download_dir/41816.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41816'
    file_path="$download_dir/41877.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41877'
    file_path="$download_dir/42220.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42220'
    file_path="$download_dir/43108.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43108'
    file_path="$download_dir/43756.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43756'
    file_path="$download_dir/45911.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45911'
    file_path="$download_dir/45986.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45986'
    file_path="$download_dir/46674.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46674'
    file_path="$download_dir/46727.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46727'
    file_path="$download_dir/46876.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46876'
    file_path="$download_dir/47388.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47388'
    file_path="$download_dir/47483.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47483'
    file_path="$download_dir/48641.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48641'
    file_path="$download_dir/49010.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49010'
    file_path="$download_dir/49147.json"
}

function download_nvidia_geforce_rtx_5090() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=NVIDIA+GeForce+RTX+5090
    download_dir=nvidia_geforce_rtx_5090
    mkdir -p $download_dir

    file_path="$download_dir/36677.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=36677'
    file_path="$download_dir/38066.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38066'
    file_path="$download_dir/38358.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38358'
    file_path="$download_dir/38847.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38847'
    file_path="$download_dir/38914.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38914'
    file_path="$download_dir/39783.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39783'
    file_path="$download_dir/40996.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40996'
    file_path="$download_dir/45157.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45157'
    file_path="$download_dir/48285.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48285'
    file_path="$download_dir/48354.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48354'
    file_path="$download_dir/48671.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48671'
    file_path="$download_dir/49083.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49083'
    file_path="$download_dir/49185.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49185'
    file_path="$download_dir/49229.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49229'
}

function download_amd_radeon_rx_9060_xt() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD+Radeon+RX+9060+XT
    download_dir=amd_radeon_rx_9060_xt
    mkdir -p $download_dir

    file_path="$download_dir/39448.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39448'
    file_path="$download_dir/40872.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40872'
    file_path="$download_dir/41365.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41365'
    file_path="$download_dir/43529.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=43529'
}

function download_amd_radeon_rx_9070_xt() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=AMD+Radeon+RX+9070+XT
    download_dir=amd_radeon_rx_9070_xt
    mkdir -p $download_dir

    file_path="$download_dir/37437.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37437'
    file_path="$download_dir/37972.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37972'
    file_path="$download_dir/38798.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38798'
    file_path="$download_dir/38876.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38876'
    file_path="$download_dir/39799.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39799'
    file_path="$download_dir/39800.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39800'
    file_path="$download_dir/39986.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39986'
    file_path="$download_dir/40191.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40191'
    file_path="$download_dir/40229.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40229'
    file_path="$download_dir/37398.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=37398'
}

function download_intel_arc_a350m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+A350M+Graphics
    download_dir=intel_arc_a350m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/49123.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49123'
}

function download_intel_arc_a370m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel(R)%20Arc(TM)%20A370M%20Graphics
    download_dir=intel_arc_a370m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/16295.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=16295'
    file_path="$download_dir/20537.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=20537'
    file_path="$download_dir/26816.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=26816'
    file_path="$download_dir/39808.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39808'
    file_path="$download_dir/48413.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48413'
    file_path="$download_dir/48413.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48413'
    file_path="$download_dir/49130.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49130'
}

function download_intel_arc_a580m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+A580+Graphics
    download_dir=intel_arc_a580m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/27375.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27375'
    file_path="$download_dir/47916.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47916'
}

function download_intel_arc_a730m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+A730M+Graphics
    download_dir=intel_arc_a730m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/23014.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=23014'
    file_path="$download_dir/26843.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=26843'
    file_path="$download_dir/27046.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=27046'
    file_path="$download_dir/35633.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35633'
    file_path="$download_dir/47557.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47557'
}

function download_intel_arc_a770_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+A770+Graphics
    download_dir=intel_arc_a770_graphics
    mkdir -p $download_dir

    file_path="$download_dir/17066.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17066'
    file_path="$download_dir/17141.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17141'
    file_path="$download_dir/17308.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17308'
    file_path="$download_dir/17385.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17385'
    file_path="$download_dir/17738.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17738'
    file_path="$download_dir/17857.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=17857'
    file_path="$download_dir/18162.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=18162'
    file_path="$download_dir/18351.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=18351'
    file_path="$download_dir/18657.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=18657'
    file_path="$download_dir/38359.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38359'
    file_path="$download_dir/38607.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38607'
    file_path="$download_dir/38823.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38823'
    file_path="$download_dir/49144.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49144'
}

function download_intel_arc_b570_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+B570+Graphics
    download_dir=intel_arc_b570_graphics
    mkdir -p $download_dir

    file_path="$download_dir/38997.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38997'
    file_path="$download_dir/38998.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=38998'
    file_path="$download_dir/39128.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39128'
    file_path="$download_dir/39447.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39447'
    file_path="$download_dir/39898.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=39898'
    file_path="$download_dir/40140.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=40140'
    file_path="$download_dir/41225.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41225'
    file_path="$download_dir/45402.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45402'
    file_path="$download_dir/46224.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46224'
}

function download_intel_arc_b580_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+B580+Graphics
    download_dir=intel_arc_b580_graphics
    mkdir -p $download_dir

    file_path="$download_dir/35477.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35477'
    file_path="$download_dir/35665.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35665'
    file_path="$download_dir/35923.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35923'
    file_path="$download_dir/35929.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=35929'
    file_path="$download_dir/41008.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41008'
    file_path="$download_dir/41120.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41120'
    file_path="$download_dir/41804.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=41804'
    file_path="$download_dir/42212.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42212'
    file_path="$download_dir/42548.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42548'
    file_path="$download_dir/42742.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=42742'
}

function download_intel_arc_pro_b50m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+Pro+B50+Graphics
    download_dir=intel_arc_pro_b50m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/44023.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=44023'
    file_path="$download_dir/45593.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=45593'
    file_path="$download_dir/46336.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=46336'
    file_path="$download_dir/47348.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47348'
    file_path="$download_dir/47672.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=47672'
    file_path="$download_dir/49079.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=49079'
}

function download_intel_arc_pro_b70m_graphics() {
    # https://vulkan.gpuinfo.org/listreports.php?devicename=Intel%28R%29+Arc%28TM%29+Pro+B70+Graphics
    download_dir=intel_arc_pro_b70m_graphics
    mkdir -p $download_dir

    file_path="$download_dir/48492.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48492'
    file_path="$download_dir/48993.json"
    [[ -f $file_path ]] && echo "Skip downloading $file_path" || curl -o $file_path 'https://vulkan.gpuinfo.org/api/v3/getprofile.php?id=48993'
}

download_nvidia_geforce_rtx_3050
download_nvidia_geforce_rtx_3060
download_nvidia_geforce_rtx_3070_ti
download_nvidia_geforce_rtx_3080
download_nvidia_geforce_rtx_3090
download_nvidia_geforce_rtx_4070
download_nvidia_geforce_rtx_4080
download_nvidia_geforce_rtx_5060
download_nvidia_geforce_rtx_5070
download_nvidia_geforce_rtx_5080
download_nvidia_geforce_rtx_5090

download_amd_radeon_780m_graphics_radv_phoenix
download_amd_radeon_rx_7900_gre_radv_navi31
download_amd_radeon_rx_9060_xt
download_amd_radeon_rx_9070_xt
download_amd_radeon_rx_9070_xt_radv_gfx1201

download_intel_arc_a350m_graphics
download_intel_arc_a370m_graphics
download_intel_arc_a580m_graphics
download_intel_arc_a730m_graphics
download_intel_arc_a770_graphics
download_intel_arc_b570_graphics
download_intel_arc_b580_graphics
download_intel_arc_pro_b50m_graphics
download_intel_arc_pro_b70m_graphics
