import sys
import os
import subprocess
import time

''' Arguments passed to the script '''

TOPAS_PRODUCTS_BRANCH = sys.argv[1]
CURRENT_VERSION = sys.argv[2]
DATE = sys.argv[3]
IMX_FOLDER = sys.argv[4]
IMX_PATH = '\\\\bosch.com\\dfsrb\\DfsDE\\DIV\\CM\\PS\\Projekte_PSEP\\7620000280_Daimler_cTP\\95.Software\\14.Versions\\iMX'

Folder = ['BOSCH_DEBUG','DTNA_DEBUG','DTNA_RELEASE','FB_DEBUG','FB_RELEASE','FUSO_DEBUG','FUSO_RELEASE','PLATFORM']

Sub_folder = ['BUILD_LOG','BVT_REPORT','IPKG_DIFF','PTX_DIFF','UNIT_TEST']


def copy_step():

	for item in Folder:
		print(f' folder {item} copy getting started ')
		VARIANT=item
		#os.system("C:\\Users\\pnc4kor\\Desktop\\Python\\document_copy.bat" + " " + TOPAS_PRODUCTS_BRANCH + " " + CURRENT_VERSION + " " +  DATE + " " + VARIANT )
		for sub in Sub_folder:
			print(f"copying folder {sub}")
			FOLDER=sub
			subprocess.call(r'C:\\Users\\pnc4kor\\Desktop\\Python\\document_copy.bat' + " " + TOPAS_PRODUCTS_BRANCH + " " + CURRENT_VERSION + " " +  DATE + " " + VARIANT + " " + FOLDER + " " + IMX_FOLDER)
			time.sleep(5)

copy_step()