#!/bin/bash

printf "\n"

if test -e iot-projects; then
    rm -rf iot-projects
fi

mkdir iot-projects
cd iot-projects

git clone https://${username}:${password}@github.com/operationspark/underpants-micro underpants-micro
git clone https://${username}:${password}@github.com/operationspark/test-guru test-guru
git clone https://${username}:${password}@github.com/operationspark/are-you-being-served are-you-being-served
git clone https://${username}:${password}@github.com/operationspark/interface-inyourface interface-inyourface
git clone https://${username}:${password}@github.com/operationspark/hardware-setup hardware-setup
git clone https://${username}:${password}@github.com/operationspark/hardware-tests hardware-tests
git clone https://${username}:${password}@github.com/operationspark/first-slice-of-pi first-slice-of-pi
git clone https://${username}:${password}@github.com/operationspark/second-slice-of-pi second-slice-of-pi
git clone https://${username}:${password}@github.com/operationspark/pi-inyourface pi-inyourface
git clone https://${username}:${password}@github.com/operationspark/iot-automatic-routing automatic-routing

if ! test -e underpants-lite || ! test -e test-guru || ! test -e are-you-being-served || ! test -e interface-inyourface || ! test -e hardware-setup || ! test -e hardware-tests || ! test -e first-slice-of-pi || ! test -e second-slice-of-pi || ! test -e pi-inyourface || ! test -e automatic-routing; then
    printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
  # Check for existing project-instructions folder, creates directory if missing
  if ! test -e project-instructions; then
    mkdir ../project-instructions
  fi

  # Copy READMEs for projects into project-instructions dir
  cp underpants-lite/README.md ../project-instructions/underpants-lite.md
  cp test-guru/README.md ../project-instructions/test-guru.md
  cp are-you-being-served/README.md ../project-instructions/are-you-being-served.md
  cp interface-inyourface/README.md ../project-instructions/interface-inyourface.md
  cp hardware-setup/README.md ../project-instructions/hardware-setup.md
  cp hardware-tests/README.md ../project-instructions/hardware-tests.md
  cp first-slice-of-pi/README.md ../project-instructions/first-slice-of-pi.md
  cp second-slice-of-pi/README.md ../project-instructions/second-slice-of-pi.md
  cp pi-inyourface/README.md ../project-instructions/pi-inyourface.md
  cp automatic-routing/README.md ../project-instructions/automatic-routing.md

  #underpants-lite
  cd underpants-lite
  rm -rf .git* .master

  #test-guru
  cd ../test-guru
  rm -rf .git* .master

  #are-you-being-served
  cd ../are-you-being-served
  rm -rf .git* .master

  #interface-inyourface
  cd ../interface-inyourface
  rm -rf .git* .master

  #hardware-setup
  cd ../hardware-setup
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

  printf "\nSUCCESS: All projects successfully installed.\n"
fi