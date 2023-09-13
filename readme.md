[nostr-tool](https://github.com/0xtrr/nostr-tool)
をインストールする

.envにNSECを設定する

定期的に実行されるようにする
コマンドライン？で

```
crontab -e
```
を実行して
```
0,30 * * * * bash /~~~~~jihou-chan/jihou-chan.sh
```
を追加すると30分ごとに時間がポストされるようになる？