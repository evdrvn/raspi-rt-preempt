raspi-rt-preempt
======

Procedure for applying RT-Preempt patch to Raspberry Pi

* For 32-bit Raspberry Pi 0/1
 
    The following procedure builds a patched kernel. It may cross-compile on another linux host.
    ```
    $ git clone https://github.com/evdrvn/raspi-rt-preempt
    $ cd raspi-rt-preempt
    $ source ./setenv-rpi01-32.sh 
    $ sh ./patch.sh
    $ sh ./build-rpi01-32.sh
    $ sh ./archive.sh
    ```

    (If cross-compile, Send rtkernel.tgz from linux host to raspberry pi, and decompress it.)


    ```
    $ sudo sh ./deploy.sh
    ```


