## Ubuntuコンテナ

* tag一覧は下記参照
    * https://hub.docker.com/r/jrei/systemd-ubuntu/tags
* ビルド
    * docker build -t ubu18:min_pkg .
* systemdを使用する場合下記で実行
    ```
    docker run -d --name ubu18 --privileged -v //sys/fs/cgroup://sys/fs/cgroup:ro ubu18:min_pkg
    docker exec -it ubu18 bash
    ```
