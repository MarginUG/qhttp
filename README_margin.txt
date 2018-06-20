Please note:

- We include the sources of this package directly
  in our build-loop using
  $MARGIN_ROOT/pri-files/qhttp.pri

- In addition, we do not use the update-dependencies.sh mechanism
  when margin or mmc is compiled/configured:
  - update-dependencies, creates a 3rdparty subdirectory here, and
    in there, it git-clones the http-parser lib (or, if it is there
    already, it updates it to the current master)
  - to avoid issues from automatic updates there, we use a copy of
    the two important files, which is directly added here
    (./http-parser/http_parser.[h|c])
- in order to update the http_paser sources, call update-dependencies.sh
  manually and then copy over the files from there to ./http-parser/
  (after that, you can rm -rf ./3rdparty again)
