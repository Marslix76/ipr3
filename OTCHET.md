## Вывод двух тестов
```bash
WARN[0000] Docker Compose is configured to build using Bake, but buildx isn't installed 
[+] Building 0.4s (12/12) FINISHED                                                                                                                                     docker:default
 => [app internal] load build definition from Dockerfile                                                                                                                         0.0s
 => => transferring dockerfile: 268B                                                                                                                                             0.0s
 => [app internal] load metadata for docker.io/library/python:3.12-slim                                                                                                          0.0s
 => [app internal] load .dockerignore                                                                                                                                            0.0s
 => => transferring context: 75B                                                                                                                                                 0.0s
 => [app 1/6] FROM docker.io/library/python:3.12-slim@sha256:5e2bdb1b0d542d5039cffb8181c65930093949194a65c365dfb1b0fe13a4fa5b                                                    0.0s
 => => resolve docker.io/library/python:3.12-slim@sha256:5e2bdb1b0d542d5039cffb8181c65930093949194a65c365dfb1b0fe13a4fa5b                                                        0.0s
 => [app internal] load build context                                                                                                                                            0.0s
 => => transferring context: 127B                                                                                                                                                0.0s
 => CACHED [app 2/6] WORKDIR /app                                                                                                                                                0.0s
 => CACHED [app 3/6] COPY /app .                                                                                                                                                 0.0s
 => CACHED [app 4/6] RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/                                                                                 0.0s
 => CACHED [app 5/6] RUN pip install --no-cache-dir -r requirements.txt                                                                                                          0.0s
 => CACHED [app 6/6] RUN useradd -m user                                                                                                                                         0.0s
 => [app] exporting to image                                                                                                                                                     0.1s
 => => exporting layers                                                                                                                                                          0.0s
 => => exporting manifest sha256:ea46bf918068c2a21d130f2e2d0a4d3c195d892b68443904fd86f147d2f891a0                                                                                0.0s
 => => exporting config sha256:db55a482d1c7711c2860c9428704d22edcf0e66a8aafa33a2a73b4bbddefc036                                                                                  0.0s
 => => exporting attestation manifest sha256:3d4f7b52ebb2db6f8318c1b5c79278ed466666070ba87a7e135ed4f02a1168fd                                                                    0.0s
 => => exporting manifest list sha256:e235bce3b30aa383d8fed6ccc4023b78d149b0d1ec522dc751a8880ada530e15                                                                           0.0s
 => => naming to docker.io/library/test-app:latest                                                                                                                               0.0s
 => => unpacking to docker.io/library/test-app:latest                                                                                                                            0.0s
 => [app] resolving provenance for metadata file                                                                                                                                 0.0s
[+] Running 5/5
 ✔ app                     Built                                                                                                                                                 0.0s 
 ✔ Network test_default    Created                                                                                                                                               0.0s 
 ✔ Volume test_db          Created                                                                                                                                               0.0s 
 ✔ Container test-app-1    Started                                                                                                                                               0.3s 
 ✔ Container test-redis-1  Started                                                                                                                                               0.3s 
curl: (56) Recv failure: Соединение разорвано другой стороной
{"status": "ready", "storage": "redis"}{"greeting": "hi", "count": 0, "hostname": "3e00aba4881f", "storage": "redis"}{"greeting": "hi", "count": 1, "hostname": "3e00aba4881f", "storage": "redis"}{"greeting": "hi", "count": 2, "hostname": "3e00aba4881f", "storage": "redis"}{"greeting": "hi", "count": 3, "hostname": "3e00aba4881f", "storage": "redis"}{"greeting": [+] Running 1/14, "hostname": "3e00aba4881f", "storage": "redis"}{"greeting": "hi", "count": 5, "hostname": "3e00aba4881f", "storage": "redis"}
 ✔ Container test-app-1  Started                                                                                                                                                10.5s 
curl: (56) Recv failure: Соединение разорвано другой стороной
[+] Stopping 1/1y", "storage": "redis"}
 ✔ Container test-redis-1  Stopped                                                                                                                                               0.2s 
[+] Running 1/1
 ✔ Container test-redis-1  Started                                                                                                                                               0.2s 
[+] Stopping 2/2y", "storage": "redis"}{"greeting": "hi", "count": 6, "hostname": "8173b7ca46d1", "storage": "redis"}
 ✔ Container test-app-1    Stopped                                                                                                                                              10.2s 
 ✔ Container test-redis-1  Stopped                                                                                                                                               0.2s 
[+] Running 4/4
 ✔ Container test-redis-1  Removed                                                                                                                                               0.0s 
 ✔ Container test-app-1    Removed                                                                                                                                               0.0s 
 ✔ Volume test_db          Removed                                                                                                                                               0.0s 
 ✔ Network test_default    Removed 
 ```
 ```bash
 WARN[0000] Docker Compose is configured to build using Bake, but buildx isn't installed 
[+] Building 0.4s (12/12) FINISHED                                                                                                                                     docker:default
 => [app internal] load build definition from Dockerfile                                                                                                                         0.0s
 => => transferring dockerfile: 268B                                                                                                                                             0.0s
 => [app internal] load metadata for docker.io/library/python:3.12-slim                                                                                                          0.0s
 => [app internal] load .dockerignore                                                                                                                                            0.0s
 => => transferring context: 75B                                                                                                                                                 0.0s
 => [app 1/6] FROM docker.io/library/python:3.12-slim@sha256:5e2bdb1b0d542d5039cffb8181c65930093949194a65c365dfb1b0fe13a4fa5b                                                    0.0s
 => => resolve docker.io/library/python:3.12-slim@sha256:5e2bdb1b0d542d5039cffb8181c65930093949194a65c365dfb1b0fe13a4fa5b                                                        0.0s
 => [app internal] load build context                                                                                                                                            0.0s
 => => transferring context: 127B                                                                                                                                                0.0s
 => CACHED [app 2/6] WORKDIR /app                                                                                                                                                0.0s
 => CACHED [app 3/6] COPY /app .                                                                                                                                                 0.0s
 => CACHED [app 4/6] RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/                                                                                 0.0s
 => CACHED [app 5/6] RUN pip install --no-cache-dir -r requirements.txt                                                                                                          0.0s
 => CACHED [app 6/6] RUN useradd -m user                                                                                                                                         0.0s
 => [app] exporting to image                                                                                                                                                     0.1s
 => => exporting layers                                                                                                                                                          0.0s
 => => exporting manifest sha256:ea46bf918068c2a21d130f2e2d0a4d3c195d892b68443904fd86f147d2f891a0                                                                                0.0s
 => => exporting config sha256:db55a482d1c7711c2860c9428704d22edcf0e66a8aafa33a2a73b4bbddefc036                                                                                  0.0s
 => => exporting attestation manifest sha256:e41d64521270dcbcddf7e9aa00c33ed23d6e83c8bfe50debe927abacccdf0370                                                                    0.0s
 => => exporting manifest list sha256:9af1bbe020dbca3911d734b6028a34bcd31974da9c27bc8cf829895ab347ccdd                                                                           0.0s
 => => naming to docker.io/library/test-app:latest                                                                                                                               0.0s
 => => unpacking to docker.io/library/test-app:latest                                                                                                                            0.0s
 => [app] resolving provenance for metadata file                                                                                                                                 0.0s
[+] Running 5/5
 ✔ app                     Built                                                                                                                                                 0.0s 
 ✔ Network test_default    Created                                                                                                                                               0.0s 
 ✔ Volume test_db          Created                                                                                                                                               0.0s 
 ✔ Container test-redis-1  Started                                                                                                                                               0.3s 
 ✔ Container test-app-1    Started                                                                                                                                               0.3s 
curl: (56) Recv failure: Соединение разорвано другой стороной
{"status": "ready", "storage": "redis"}{"greeting": "hi", "count": 0, "hostname": "550c629c7c5b", "storage": "redis"}{"greeting": "hi", "count": 1, "hostname": "550c629c7c5b", "storage": "redis"}{"greeting": "hi", "count": 2, "hostname": "550c629c7c5b", "storage": "redis"}{"greeting": "hi", "count": 3, "hostname": "550c629c7c5b", "storage": "redis"}{"greeting": [+] Running 1/14, "hostname": "550c629c7c5b", "storage": "redis"}{"greeting": "hi", "count": 5, "hostname": "550c629c7c5b", "storage": "redis"}
 ✔ Container test-app-1  Started                                                                                                                                                10.6s 
curl: (56) Recv failure: Соединение разорвано другой стороной
[+] Stopping 1/1y", "storage": "redis"}
 ✔ Container test-redis-1  Stopped                                                                                                                                               0.2s 
[+] Running 1/1
 ✔ Container test-redis-1  Started                                                                                                                                               0.2s 
[+] Stopping 2/2y", "storage": "redis"}{"greeting": "hi", "count": 6, "hostname": "a3167b4a65f3", "storage": "redis"}
 ✔ Container test-app-1    Stopped                                                                                                                                              10.3s 
 ✔ Container test-redis-1  Stopped                                                                                                                                               0.2s 
[+] Running 4/4
 ✔ Container test-redis-1  Removed                                                                                                                                               0.0s 
 ✔ Container test-app-1    Removed                                                                                                                                               0.0s 
 ✔ Volume test_db          Removed                                                                                                                                               0.0s 
 ✔ Network test_default    Removed 
 ```