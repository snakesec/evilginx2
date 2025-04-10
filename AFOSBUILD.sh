rm -rf /usr/share/evilginx/phishlets/ /usr/share/evilginx/templates/ /usr/local/bin/evilginx

make

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Make... PASS!"
else
  # houston we have a problem
  exit 1
fi

strip build/evilginx

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Strip evilginx2... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf build/evilginx /opt/ANDRAX/bin

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy package... PASS!"
else
  # houston we have a problem
  exit 1
fi

