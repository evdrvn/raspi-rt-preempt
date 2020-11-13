raspi-rt-preempt
======

The scripted procedure for applying RT-Preempt patch to Raspberry Pi linux Kernal.  
See also https://www.raspberrypi.org/documentation/linux/kernel/building.md .

* For 32-bit Raspberry Pi 0/1, Compute Module 
 
    The following procedure builds a patched kernel on x86-64 linux host.
    ```
    $ git clone https://github.com/evdrvn/raspi-rt-preempt
    $ cd raspi-rt-preempt
    $ source ./setenv-rpi01-32.sh 
    $ sh ./patch.sh
    $ sh ./build.sh
    $ sh ./archive.sh
    ```

    (Send rtkernel.tgz from the host to target raspberry pi, and decompress it on the target.)

    On the target,

    ```
    $ sudo sh ./deploy.sh
    ```
