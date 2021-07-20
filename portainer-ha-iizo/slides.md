---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: ./assets/portainer.png
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# some information about the slides, markdown enabled
info: |
  ## for 2021-07-21 LT
  Presentation about Portainer

---

# PortainerでDockerと仲良くなる

Portainerはいいぞ

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    クリックまたはスペースキーで次のスライドへ <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" alt="GitHub"
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<br>
<br>
<br>

2021/07/21


SCSK ものづくり革新推進センター   
SC+基盤部 中山正哉


---
layout: two-cols
---

# 自己紹介

<div class="w-11/12">

|     |     |
| --- | --- |
| 名前 | 中山 正哉 |
| 所属 | SCSK株式会社<br>ものづくり革新推進センター<br>SC+基盤部 |
| 業務 | アプリケーション開発<br>(主に開発インフラ管理) |
| 出身 | 大阪府 |
| 興味 | インフラをコードで管理できるツール <ul><li>Docker</li><li>Kubernetes</li><li>Terraform</li></ul> |
| ひとこと | 王国を作りたい |

</div>

::right::

<br>
<br>
<br>
<br>
<br>

```


















```

---
layout: image-right
image: https://source.unsplash.com/collection/94734566/1920x1080
---

# このスライドについて

<div>

## URL
このスライドには、以下からアクセスしていただけます。  
https://priceless-allen-c128b8.netlify.app

## 使用ツール
このスライドは、Slidevを使って作成しています。  

Slidevとは、Markdownをベースとした記法で  
かっこよさげなスライドを作れるツールです。

## 参考
- [Slidev: Presentation Sliders for Developers](https://sli.dev/)
- [開発者のためのスライド作成ツール Slidev がすごい](https://zenn.dev/ryo_kawamata/articles/introduce-slidev)

</div>

---

# 目次

- Portainerとは？

<br>

- Portainerでできること

<br>

- Portainerを使ってみる

<br>


<br>
<br>


---

# Portainerとは？

<div>
Portainerは、GUIでコンテナを管理できるツール
</div>
<br>
<img src="/assets/portainer-01.png" class="w-8/10">

---

# Portainerとは？

<div>
Portainer自体もイメージとして用意されており、簡単にインストールできる
</div>

```
docker run -dit \
    --publish 8000:8000 \
    --publish 9000:9000 \
    --name=portainer-ce \
    --restart=always \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
    --mount type=volume,src=portainer_volume,dst=/data \
    portainer/portainer-ce
```

---

# Portainerでできること

<div>

- 主要リソースの管理
- テンプレートの起動

</div>

---

# 主要リソースの管理

<div>
Dockerはあまりにも多機能
</div>

```
$ docker help
(省略)
Management Commands:
  app*        Docker App (Docker Inc., v0.9.1-beta3)
  builder     Manage builds
  buildx*     Build with BuildKit (Docker Inc., v0.5.1-docker)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes
(省略)
```

---
layout: two-cols
---

# 主要リソースの管理

<div>
    主要リソースの管理をWebコンソール上から実施可能  
    <br>
    <br>
    <img src="/assets/portainer-02.png" class="w-1/2" style="padding-left: 10%;">
</div>

::right::

<br>
<br>
<br>
<br>
<br>

```
Management Commands:
    app*        Docker App (Docker Inc., v0.9.1-beta3)
    builder     Manage builds
    buildx*     Build with BuildKit (Docker Inc., v0.5.1-docker)
　✅config      Manage Docker configs
　✅container   Manage containers
    context     Manage contexts
　✅image       Manage images
    manifest    Manage Docker image manifests and manifest lists
　✅network     Manage networks
    node        Manage Swarm nodes
    plugin      Manage plugins
　✅secret      Manage Docker secrets
　✅service     Manage services
　✅stack       Manage Docker stacks
　✅swarm       Manage Swarm
    system      Manage Docker
    trust       Manage trust on Docker images
　✅volume      Manage volumes
```

---

# 主要リソースの管理

<div>

    docker exec によるコンテナログインもWeb上で実現可能

</div>
<br>
<img src="/assets/portainer-03.png" class="w-10/12">


---

# 主要リソースの管理

<div>

    docker exec によるコンテナログインもWeb上で実現可能

</div>
<br>
<img src="/assets/portainer-04.png" class="w-10/12">

---

# テンプレートの起動

<div>

すぐに起動できる豊富なテンプレート集

</div>
<img src="/assets/portainer-05.png" class="w-10/12">


---

# デモ

<div>

実際にアクセスしてみてください！  
[Portainer Live Demo(公式)](https://www.portainer.io/cs/c/?cta_guid=9a0f10ae-2cff-474d-a3af-9913209e37e5&signature=AAH58kHXD8HaZ_6d2KoYQX59Oj56M8E8hg&pageId=36283906822&placement_guid=6a69b3f9-cd43-459e-b99e-0cb76b9c43f3&click=165b58ed-da75-4779-b709-3b2b8391062a&hsutk=c7a000001724178c1382017ac5709c60&canon=https%3A%2F%2Fwww.portainer.io%2Flive-demo&portal_id=4731999&redirect_url=APefjpEbbwf-8S0AW39El1a5QUVbt7hEN03szLFzTCDToUbdIf5F-RCmqww2Jbw--7c7GKi7c5hKWlftFXVjUsIxt--Dp_prLVHfzgiVGIvKDzz32RAeF-CTsKFts_v4f8MFw0q0OvLL)  

ID:admin  
PW:tryportainer


</div>

---

# Portainerを使ってみる

<div>
活用例：LPIC Level1の勉強

RHEL系、Debian系、OpenSUSEのパッケージ管理コマンドを実際叩いてみたい  
-> 3つのOSのisoイメージを落としてきてそれぞれセットアップするのか...？  
-> コンテナでいいのでは？

※カーネル、ブートローダ、systemd等、コンテナでは検証が難しい機能もあります。
</div>


---

# Portainerを使ってみる

<div>
雑にcomposeファイルを書く
</div>

```
version: '3.7'

services:
  centos:
    image: centos:7
    tty: true
  ubuntu:
    image: ubuntu:20.04
    tty: true
  suse:
    image: opensuse/leap:15
    tty: true
```

---

# Portainerを使ってみる

<div>
雑に貼り付けて雑にデプロイする
</div>
<br>

<img src="/assets/portainer-06.png" class="w-10/12">

---

# デモ

---

# まとめ

- Portainerを使うとDockerで管理しているリソースの把握が捗る
- Portainerを使うとDockerで扱えるコンテナを使った勉強も捗る
- Portainerはいいぞ

<br>
<br>

# 奥付
<div>

[Portainerで複数ホストのコンテナを一元管理してPortainerはいいぞと言う](https://qiita.com/polarbear08/items/931fe04ec228fad13092)  
ただの自分の記事の宣伝です。  
今回詳しく触れられていなかった、Swarmモードでの挙動について説明しています。

</div>

<br>
<br>

## ありがとうございました！