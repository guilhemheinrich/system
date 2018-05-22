#! /bin/bash

client_path="/home/icare/SYSTEM/issac"
triplestore_data_path=""

sudo singularity run --app start --writable -B "$client_path:/var/www/html/issac" issac.simg

