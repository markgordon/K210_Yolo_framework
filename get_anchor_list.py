import numpy as np
from tools.utils import Helper, INFO, ERROR, NOTE
import sys
import argparse

def main(train_set: str):
    centroids = np.load(f'data/{train_set}_anchor.npy')
    print(NOTE, f'Now anchors are :\n{centroids}')

def parse_arguments(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('train_set', type=str, help=NOTE + 'this is train dataset name , the output *.npy file will be {train_set}_anchors.list')
    return parser.parse_args(argv)


if __name__ == '__main__':
    args = parse_arguments(sys.argv[1:])
    main(args.train_set)
