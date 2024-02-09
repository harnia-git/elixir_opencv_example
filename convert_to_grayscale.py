# convert_to_grayscale.py
import cv2
import sys

input_image_path = sys.argv[1]
output_image_path = sys.argv[2]

# 画像を読み込む
image = cv2.imread(input_image_path)
# グレースケールに変換
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
# 結果を保存
cv2.imwrite(output_image_path, gray_image)
