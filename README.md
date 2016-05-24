<h1>Docker Installation Guide</h1>

<p>참고 URL :&nbsp;http://pyrasis.com/Docker/Docker-HOWTO</p>

<p>https://docs.docker.com/engine/installation/linux/ubuntulinux/</p>

<p>&nbsp;</p>

<p><strong>자동 설치 스크립트</strong></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo wget -qO- https://get.docker.com/ | sh</code></pre>

<p>get.docker.com 스크립트로 Docker를 설치하면 hello-world 이미지도 자동으로 설치됩니다.<br />
hello-world 이미지는 사용하지 않을 것이므로 모두 삭제합니다</p>

<p><strong>우분투 패키지 설치 - Ubuntu 14.04 LTS 64비트 기준</strong></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo apt-get update
$ sudo apt-get install docker.io
$ sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker</code></pre>

<p><span style="font-size: 11px;"><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">/usr/bin/docker.io</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;실행파일을&nbsp;</span><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">/usr/local/bin/docker</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">로 링크해서 사용합니다.</span></span></p>

<p><strong>root 그룹으로 등록</strong></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo </code>groupadd docker<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">
$ sudo </code>gpasswd -a ${USER} docker<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">
$ sudo </code>service docker restart</pre>

<p>&nbsp;</p>

<p><strong>사용하기</strong></p>

<p><span style="font-size: 11px;"><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker pull &lt;이미지 이름&gt;:&lt;태그&gt;</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. latest를 설정하면 최신 버전을 받습니다.&nbsp;</span><span style="box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">ubuntu:14.04</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">,</span><span style="box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">ubuntu:12.10</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">처럼 태그를 지정해 줄 수도 있습니다.</span></span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker pull ubuntu:latest</code></pre>

<p><span style="font-size: 11px;"><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker images</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">는 모든 이미지 목록을 출력합니다.&nbsp;</span><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker images ubuntu</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">처럼 이미지 이름을 설정하면 이름은 같지만</span><span style="box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">태그</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">가 다른 이미지가 출력됩니다.</span></span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker images
REPOSITORY          TAG                 IMAGE ID            CREATED                  VIRTUAL SIZE
ubuntu              latest              e54ca5efa2e9        Less than a second ago   276.1 MB</code></pre>

<p><span style="font-size: 11px;"><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker run &lt;옵션&gt; &lt;이미지 이름&gt; &lt;실행할 파일&gt;</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. 여기서는&nbsp;</span><span style="box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">ubunbu</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;이미지를 컨테이너로 생성한 뒤 ubuntu 이미지 안의&nbsp;</span><span style="box-sizing: border-box; font-weight: 700; color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">/bin/bash</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">를 실행합니다. 이미지 이름 대신 이미지 ID를 사용해도 됩니다.</span></span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker run -i -t --name hello ubuntu /bin/bash</code></pre>

<p><span style="font-size: 11px;"><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker start &lt;컨테이너 이름&gt;</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. 컨테이너 이름 대신 컨테이너 ID를 사용해도 됩니다.</span></span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker start hello</code></pre>

<p><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker restart &lt;컨테이너 이름&gt;</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; font-size: 15px; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. 컨테이너 이름 대신 컨테이너 ID를 사용해도 됩니다.</span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker restart hello</code></pre>

<p><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker attach &lt;컨테이너 이름&gt;</code><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; font-size: 15px; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. 컨테이너 이름 대신 컨테이너 ID를 사용해도 됩니다.</span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker attach hello
root@6338ce52d07c:/#</code></pre>

<p><code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; padding: 2px 4px; color: rgb(199, 37, 78); white-space: nowrap; border-radius: 4px; line-height: 25.5px; background-color: rgb(249, 242, 244);">docker build -t</code><span style="color: rgb(199, 37, 78); font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: 13.5px; line-height: 25.5px; white-space: nowrap; background-color: rgb(249, 242, 244);">&lt;태그&gt;&nbsp;&lt;Dockerfile Path&gt;</span><span style="color: rgb(85, 85, 85); font-family: 나눔고딕, NanumGothic, 'Nanum Gothic'; font-size: 15px; line-height: 25.5px; background-color: rgb(255, 255, 255);">&nbsp;형식입니다. Dockerfile Path는 현재 디렉토리는 &#39;.&#39;을&nbsp;사용해도 됩니다.</span></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
<code style="box-sizing: border-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; font-size: inherit; padding: 0px; color: inherit; white-space: pre-wrap; border-radius: 0px; background-color: transparent;">$ sudo docker build -t dokerfile/hello .</code>
</pre>

<p>Dockerfile :&nbsp;https://github.com/jingsm/docker</p>

<p>&nbsp;</p>

<p><strong>OpenJDK 설치 시 오류 이슈</strong></p>

<p>https://github.com/boot2docker/boot2docker/issues/1099</p>

<p><strong>Oracle JDK 8 설치 권장 - 참고용</strong></p>

<pre style="border-style: solid; border-color: rgb(204, 204, 204); padding: 9.5px; box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; margin-top: 0px; margin-bottom: 10px; line-height: 1.42857; word-break: break-all; word-wrap: break-word; color: rgb(255, 255, 255); border-radius: 4px; background: rgb(51, 51, 51);">
$ sudo apt-get install software-properties-common
$ sudo apt-get install python-software-properties
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update
$ sudo apt-get install oracle-java8-installer</pre>

<p>&nbsp;</p>
