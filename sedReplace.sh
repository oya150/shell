imgpath="$1"
echo $imgpath
cd ~
mkdir tmp_parsed
cd tmp_parsed
sed -E 's/((http?|https?)|\/).*(resource\/)/\/\/www.test.co.kr\/\3/g' $imgpath > parsedCss.css
open .
