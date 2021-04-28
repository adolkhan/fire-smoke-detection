# fire-smoke-detection
Fire smoke detection model

This repository consists of algorithm that annotates the images and outputs the bounding boxes of the fire and smoke in the picture, then adds it to database.
The initial code was taken from fire-detect-yolov4: https://github.com/gengyanlei/fire-detect-yolov4.

### What it does:

* takes url or path to the image;
* takes probability threshold as parameter (which means to return only objects which has probability > threshold);
* using the above noted model detects fire or smoke (if any) on that image;
* returns results that have: id of the image, probability of detection (probability), detection name (fire or smoke), and the corresponding bounding boxes of the area in which there is smoke or fire (bbox). Vertices are like x1, y1, x2, y2. E.g.:

{“image_id”: 1, “fire”: 0.61, “bbox”: [945, 592, 123, 107]}
{“image_id”: 2,  “smoke”: 0.07, “bbox”: [898, 613, 125, 103]}

* writes results into MySQL database



### installation environment
```
    python: 3.6+
    ubuntu16.04 or 18.04
    darknet (cuda10.0 docker)
    pytorch 1.6+ (cuda10.2 docker)
```

### how to use test's code in yolov5
* yolov5's test：
    ```
    1. cd yolov5
    2. sudo mysql;
    3. source my.sql; 
    4. exit;
    5. pip install -r requirements.txt
    5. python detect.py --source ***/aaa.jpg --weights ./best.pt
    ```
* if error appears:
    ```
    1. sudo apt update
    2. sudo apt install libgl1-mesa-glx
    ```
### Cite
* train_data contain 1-2-3-4:
* train_data1: https://blog.csdn.net/LEILEI18A/article/details/107334474
* train_data2: https://bitbucket.org/gbdi/bowfire-dataset/downloads/
* train_data3: https://github.com/OlafenwaMoses/FireNET/releases/download/v1.0/fire-dataset.zip
* train_data4: https://github.com/cair/Fire-Detection-Image-Dataset/blob/master/Fire%20images.rar
* fire-demo-dataset: http://signal.ee.bilkent.edu.tr/VisiFire/Demo/SampleClips.html
* google云盘下载链接由qq群中小伙伴提供
* fire-detect-yolov4: https://github.com/gengyanlei/fire-detect-yolov4

### Reputation:
* **This data is for academic exploration only！！！**

### Other
* [building-segmentation-dataset](https://github.com/gengyanlei/build_segmentation_dataset)
* [reflective-clothes-detect-dataset](https://github.com/gengyanlei/reflective-clothes-detect)


