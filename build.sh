#!/bin/bash

docker login --username=mauriciojost

docker build -t mauriciojost/scala .

docker push mauriciojost/scala
