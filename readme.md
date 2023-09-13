[nostr-tool](https://github.com/0xtrr/nostr-tool)
をインストールする

.envにNSECを設定する

定期的に実行されるようにする

crontab -e
```
0,30 * * * * bash /~~~~~jihou-chan/jihou-chan.sh
```

で30分ごとに時間がポストされる