#!/bin/bash
# 実行コマンド　bash jihou-chan.sh
# 実行場所によらないようにする
cd `dirname $0`

# .envファイルから環境変数を読み込む　bashの "source" はshの "." 
if [ -f .env ]; then
    source ./.env
fi

num=`date '+%I:%M'`
ampm=`date '+%p'`


#日付変わったときに日付を出したい
dif1="$(date '+%H:%M')"
dif2="00:00"

if [ $dif1 != $dif2 ] ; then
num=`date '+%H:%M'`
  MSG=" --------------${num}--------------"
  
    echo $num
else
    num1="$(date '+%Y/%m/%d(%a)')"
    MSG=" ----------${num1}----------"
    echo $num
fi

echo "$MSG"

nostr-tool -r wss://yabu.me -r wss://nos.lol -r wss://r.kojira.io -r wss://relay.nostr.moctane.com -p $NSEC text-note -c "$MSG"