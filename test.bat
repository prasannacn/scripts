@echo off
net use s: \\bosch.com\dfsrb\DfsDE\DIV\CM\PS\Projekte_PSEP\7620000280_Daimler_cTP\95.Software\14.Versions\iMX

md s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%
md s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
md s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace

echo stating BSP file copying

pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/BSP_DAIMLER.CTP* s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%

echo stating workspace file copying

if 
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_2019_c_bootloader_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_c1_bootloader_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_512_root_partition_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_512_ubi_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_1024_root_partition_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/daimler_ctp_1024_ubi_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/bsp/daimler_ctp/platform-ctp/images/packages* s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\workspace

echo stating bsp file copying

pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_2019_c_bootloader_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_c1_bootloader_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_512_root_partition_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_512_ubi_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_1024_root_partition_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/daimler_ctp_1024_ubi_image s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp
pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/binary_results/daimler_ctp/platform-ctp/images/packages* s:\PRE_BUILD-%BUILD_NUMBER%-%BASE_VERSION%\bsp