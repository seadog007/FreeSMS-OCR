curl -s http://www.afreesms.com/image.php?o=$1 -H "Cookie: session_id=$2" -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36' -H "Referer: http://www.afreesms.com/worldwide/taiwan" \
| convert -threshold $3% -crop 76x16-0+2 -filter box fd:0 fd:1 \
| tesseract stdin stdout -psm 4 digits \
| sed 's/-1/4/g' \
| sed 's/ /1/g'

