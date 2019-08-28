import sys
import os
import subprocess
import time

''' Arguments passed to the script '''

PROJ = sys.argv[1]
BUILD_NUMBER = sys.argv[2]
BASE_VERSION = sys.argv[3]

IMX_PATH = '\\\\bosch.com\\dfsrb\\DfsDE\\DIV\\CM\\PS\\Projekte_PSEP\\7620000280_Daimler_cTP\\95.Software\\14.Versions\\iMX'

FILES = ['BSP','daimler_ctp_2019_c_bootloader_image','daimler_ctp_c1_bootloader_image','daimler_ctp_512_root_partition_image','daimler_ctp_512_ubi_image','daimler_ctp_1024_root_partition_image','daimler_ctp_1024_ubi_image','packages*','images']

path=IMX_PATH+"\\"+"PRE_BUILD-"+BUILD_NUMBER+"-"+BASE_VERSION

if not os.path.exists(path):
	os.makedirs(path)

bsp=path+"\\"+"bsp"

if not os.path.exists(bsp):
	os.makedirs(bsp)

workspace=path+"\\"+"workspace"

if not os.path.exists(workspace):
	os.makedirs(workspace)

def copy_step():

	for item in FILES:
		if "BSP" is item:
			print ("copying BSP file")
			src = "binary_results/BSP_DAIMLER.CTP*"
			dsc = path
			subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\copy.bat' + " " + src + " " + dsc + " " + PROJ + " " + BUILD_NUMBER)
			time.sleep(10)
		
		#print(f" copying {item} to {workspace}")

		src = "bsp/daimler_ctp/platform*/images/"+item
		dsc = workspace
		subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\copy.bat' + " " + src + " " + dsc + " " + PROJ + " " + BUILD_NUMBER)
		time.sleep(10)
		
		''' The below step is for atlanta build if this step fail for bremen don't worry'''

		src = "bsp/platform*/images/"+item
		dsc = workspace
		subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\copy.bat' + " " + src + " " + dsc + " " + PROJ + " " + BUILD_NUMBER)
		time.sleep(10)

		#print(f" copying {item} to {bsp}")

		src = "binary_results/daimler_ctp/platform*/images/"+item
		dsc = bsp
		subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\copy.bat' + " " + src + " " + dsc + " " + PROJ + " " + BUILD_NUMBER)
		time.sleep(10)

		if "images" is item:
			src = "bsp/platform-ctp-barebox/"+item
			dsc = bsp
			subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\copy.bat' + " " + src + " " + dsc + " " + PROJ + " " + BUILD_NUMBER)
			time.sleep(10)

copy_step()