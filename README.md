# weechat-letsencrypt

## build

```
docker build -t jonfk/weechat .
```

## run

```
docker run -it -d jonfk/weechat
```

Run with relay port
```
docker run -it -d -p 9001:9001 jonfk/weechat
```

Run with relay port and .weechat mount
```
docker run -it -d -p 9001:9001 -v /path/to/.weechat:/weechat/.weechat jonfk/weechat
```

## weechat

Configure unsecured relay
```
/set relay.network.password yourpassword
/relay add weechat 9001
```
