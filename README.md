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

* For 32-bit Raspberry Pi 2/3/3+, Compute Module 3

    Change Only the following part of the procedure of Raspberry Pi 0/1
    ```
    $ source ./setenv-rpi23-32.sh

    ```

    And, avoiding freezes/crashes, add the folloing to `/boot/cmdline.txt`. (See also https://www.osadl.org/Single-View.111+M5c03315dc57.0.html)
    ```
    dwc_otg.fiq_enable=0 dwc_otg.fiq_fsm_enable=0
    ```

