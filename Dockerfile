FROM tensorflow/tensorflow:1.14.0-gpu-py3

WORKDIR /app/K210_Yolo_framework

COPY requirements.txt .
RUN pip3 install -r requirements.txt
RUN pip3 install opencv-contrib-python
RUN apt-get install -y libsm6 libxrender1 libfontconfig1 build-essential libglib2.0-0 libsm6 libxext6 libxrender-dev wget
RUN wget https://github.com/kendryte/nncase/releases/download/v0.2.0-beta1/ncc_linux_x86_64.tar.xz
RUN tar Jxf ncc_linux_x86_64.tar.xz
RUN mv ncc /usr/local/bin/

COPY . ./
