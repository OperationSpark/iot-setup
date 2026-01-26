# this script most recently updated/maintained in January 2026
# extract username from current working directory (expects format: username.github.io)
current_dir=$(basename "$PWD")
# extract username from current working directory (expects format: username.github.io)
if [[ "$current_dir" =~ ^([^.]+)\.github\.io$ ]]; then
  username="${BASH_REMATCH[1]}"
  echo $username
else
  echo "Error: Current directory name must be in the format username.github.io." 
  echo "Please check which directory you are in. Check with your instructor if you need help. Cancelling operation."
  exit 1
fi

# check if iot-projects folder already exists
if [ -d "iot-projects" ]; then
  echo "Error: iot-projects directory already exists." 
  echo "You may have already run this script. Check with your instructor before proceeding. Cancelling operation."
  exit 1
fi

mkdir iot-projects
cd iot-projects

git clone https://github.com/operationspark/underpants-lite underpants-lite
git clone https://github.com/operationspark/are-you-being-served are-you-being-served
git clone https://github.com/operationspark/catch-server catch-server
git clone https://github.com/operationspark/interface-inyourface interface-inyourface
git clone https://github.com/operationspark/hardware-setup hardware-setup
git clone https://github.com/operationspark/first-slice-of-pi first-slice-of-pi
git clone https://github.com/operationspark/second-slice-of-pi second-slice-of-pi
git clone https://github.com/operationspark/pi-inyourface pi-inyourface
git clone https://github.com/operationspark/iot-automatic-routing automatic-routing

if ! test -e underpants-lite || ! test -e catch-server || ! test -e are-you-being-served || ! test -e interface-inyourface || ! test -e hardware-setup || ! test -e first-slice-of-pi || ! test -e second-slice-of-pi || ! test -e pi-inyourface || ! test -e automatic-routing; then
    printf "\nFAILURE: Some projects could not be accessed on GitHub. Please run the script again."
else
  # Check for existing project-instructions folder, creates directory if missing
  if ! test -e project-instructions; then
    mkdir ../project-instructions
  fi

  # Copy READMEs for projects into project-instructions dir
  mkdir ../project-instructions/iot
  cp underpants-lite/README.md ../project-instructions/iot/underpants-lite.md
  cp catch-server/README.md ../project-instructions/iot/catch-server.md
  cp are-you-being-served/README.md ../project-instructions/iot/are-you-being-served.md
  cp interface-inyourface/README.md ../project-instructions/iot/interface-inyourface.md
  cp hardware-setup/README.md ../project-instructions/iot/hardware-setup.md
  cp first-slice-of-pi/README.md ../project-instructions/iot/first-slice-of-pi.md
  cp second-slice-of-pi/README.md ../project-instructions/iot/second-slice-of-pi.md
  cp pi-inyourface/README.md ../project-instructions/iot/pi-inyourface.md
  cp automatic-routing/README.md ../project-instructions/iot/automatic-routing.md

  #underpants-lite
  cd underpants-lite
  rm -rf .git* .master

  #test-guru
  cd ../catch-server
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
