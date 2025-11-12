# initial-data

問題とベンチマーカーで使用される初期データの生成を行います。

## 前準備

```sh
pip3 install -r requirements.txt
```

```sh
go install github.com/orisano/wayt@latest
echo 'export PATH="$(go env GOPATH)/bin:$PATH"' >> ~/.zshrc
exec $SHELL -l
```


## 初期データの生成

```sh
make
```

