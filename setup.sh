#!/bin/bash

printf "\n"

if test -e iot-projects; then
    rm -rf iot-projects
fi

mkdir iot-projects
cd iot-projects

git clone https://github.com/operationspark/underpants-micro underpants-micro
git clone https://github.com/operationspark/test-guru test-guru
git clone https://github.com/operationspark/are-you-being-served are-you-being-served
git clone https://github.com/operationspark/interface-inyourface interface-inyourface
git clone https://github.com/operationspark/hardware-tests hardware-tests
git clone https://github.com/operationspark/first-slice-of-pi first-slice-of-pi
git clone https://github.com/operationspark/second-slice-of-pi second-slice-of-pi
git clone https://github.com/operationspark/pi-inyourface pi-inyourface
git clone https://github.com/operationspark/iot-automatic-routing automatic-routing

if ! test -e underpants-micro || ! test -e test-guru || ! test -e are-you-being-served || ! test -e interface-inyourface || ! test -e hardware-tests || ! test -e first-slice-of-pi || ! test -e second-slice-of-pi || ! test -e pi-inyourface || ! test -e automatic-routing; then
    printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
    #underpants-micro
    cd underpants-micro
    rm -rf .git* .master

    #test-guru
    cd ../test-guru
    rm -rf .git* .master

    #interface-inyourface
    cd ../interface-inyourface
    rm -rf .git* .master

    #hardware-tests
    cd ../hardware-tests
    rm -rf .git* .master

    #first-slice-of-pi
    cd ../first-slice-of-pi
    rm -rf .git* .master

    #second-slice-of-pi
    cd ../second-slice-of-pi
    rm -rf .git* .master

    #pi-inyouface
    cd ../pi-inyourface
    rm -rf .git* .master

    #automatic-routing
    cd ../automatic-routing
    rm -rf .git* .master

    #are-you-being-served
    cd ../are-you-being-served
    rm -rf .git* .master

    printf "\nSUCCESS: All projects successfully installed."
fi
