for file in $(find . -type f -name \*.html.erb); do
  html2haml -e ${file} "$(dirname ${file})/$(basename ${file} .erb).haml";
done
