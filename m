Return-Path: <usb-storage+bncBD4ONGFER4PBB7W33X2QKGQE2UZYDSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA031CC638
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 04:59:12 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id e44sf6640725qta.9
        for <lists+usb-storage@lfdr.de>; Sat, 09 May 2020 19:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589079551; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hj4u0CCaKUP+DsiKBEEh7sLBD8KDIG9tATu8rNNqlPJ7w+3SwiAqnqGKvDAlr/e+c5
         3VcOmKf+EPH6NDyz1Ev+94/UTSoyMFP6GEyHhMTQIrPOJQUSc1W2NNz5Ad0lrdQypIpN
         MLQZdQheh6nhuXlwWEI74Zht8hY3Dqz6BtXAVSVzFP8cFzqxsZH/DNfy9gHKQyLjScGr
         a5l0GwVzNoqfGT/omEZ1hXF66h+jBGbEv1gvOZo/ci9N0u1ur+sAsUTdQHyPH+AHJqFY
         dIaVZSBGCgHuFWvPUWYysl5DTgltolLqjUBAzLH+yXTsxEaWcot1qweaFUtzi5hNF+wJ
         KcPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:mime-version:sender:dkim-signature;
        bh=cqTknMmhJcdUqhlsrl82baWl8Yim9TmBJpQm63kBGYY=;
        b=gZE+cc++g+OAOil76zIcvrh3tifsJS85X3BCtSG4b5gko49KB7bJUfgSYpv1zOhloI
         CN9N5VBoDujNyKXoautZj3vEjIW/d4UvL3OwgjHQ1Ure8wIrvDtBqoYFtyXKxfXb+Mha
         L1wN2qQQlcX6d3Aae1RrnAE7mMIGOw1IljZBgsEL4xtewzXwnJ2IQiorahXTWzcRAviF
         vJIfVieL5oVdjHYjzgAOpunSOlmAhgNOK44QYUdRzAumzaplNwwWbSQIQuYQL8vO1asg
         ruuZZ3h8rl6XuZXJZoZmr3O0bOEiZqyzmRJGu3+JtiFlB7KVII0Rr+UocsiSIVQjk8ej
         oJyw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FCFBv6Bt;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cqTknMmhJcdUqhlsrl82baWl8Yim9TmBJpQm63kBGYY=;
        b=V4rSu8IanQWmLlsa8oc14hWO39jWsk2XqFuf7IzA0ipEidlgI4XugYVQFJD9fG2rRV
         y/HnOYpM0bpGdVPLxsQv/SyGmsOQSCl9BlP6Pur1A9NY+MEkW9GT47CTUKVhKw6Xc8sw
         Z2zSvYn+FVyGttpZwFVsIzEXLbw7X+h9DaTvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cqTknMmhJcdUqhlsrl82baWl8Yim9TmBJpQm63kBGYY=;
        b=nwzz/rkTI2JDX2OA3OHafTqUfRvFYuZMcGRgk+qqfz/ccZYIaBXRZW3ylGY0ajpAlB
         H9wjkuMGLH8UiaZh7CgR8qJWLj8GsEddboF3GobhDBnOS0ZTx0lc3az7jQkPj9S2sQpP
         y+VtMg79MoNx34UV2NzgJ6ugf008sY1vrk+W+QqSYKH5PmPG746fMyMXrjUQgiZ8Hp76
         qHxRUPU4JHDTKFV/Q7ZW640MmpcgN4mbJ2uh5JYEKZQCbH+tB8QY9u2KsjGTWSLr02Fk
         ExKmMBMnauV3ThZfO7PbnWU6XauqhhW4TJgwxKi9qyA9tUeX4LeG+bjfwe6uYeA0+DM8
         yekw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuahiqAMVTTzFXakteRwT1mHp2XVDXZoh6X6MQMEbvKmrcCT6WUc
	SPUxrR9y2kiGCdBqCW9zSDOOjQ==
X-Google-Smtp-Source: APiQypKyJ/KRa2WRjtTsyLnjeHA+r/jRfh3aFQWm6pvvhAjxTttU7oP0DawL1rdHHHcdfXfSCsrufA==
X-Received: by 2002:a05:6214:114d:: with SMTP id b13mr10161432qvt.44.1589079550722;
        Sat, 09 May 2020 19:59:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:8a03:: with SMTP id m3ls3653752qkd.8.gmail; Sat, 09 May
 2020 19:59:10 -0700 (PDT)
X-Received: by 2002:a37:dc05:: with SMTP id v5mr1770276qki.315.1589079550355;
        Sat, 09 May 2020 19:59:10 -0700 (PDT)
Received: by 2002:a05:620a:9d2:b029:df:54a3:549d with SMTP id y18-20020a05620a09d2b02900df54a3549dmsqky;
        Sat, 9 May 2020 19:56:10 -0700 (PDT)
X-Received: by 2002:a25:d14c:: with SMTP id i73mr15659158ybg.116.1589079370103;
        Sat, 09 May 2020 19:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589079370; cv=none;
        d=google.com; s=arc-20160816;
        b=f7ptcTrCvDgmPgbNkB5LT/ycxtsWSlh1EozyBPfF1cjdh8RuivaWqk7vxJZMXa0Zrc
         A6sM5Hq0EGK7bIlOWYJSJJFSOJwhnrTtv07Tj8B8X6yOg4ADw5bqLuhPdrinTawCpsL1
         tWxoeLnITm5bHuWmVgVrsR2bhVRnWukVVFwLHnGpmSNijyZYcpD7wJbXuzaqui9jWTQN
         HSoEDree4uZXOkyOL7nK3NfXw6O/WVK7Z/04lAa3EjErytxjd/8hHYqX0rdtPB9NBIeq
         4musnwc2zwVAQszABrtuxSxIjLTMzUFiqnERPxCXFy9Lk2PCVFXIY0u8v3sjjJqfEZ6e
         VNsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=ukvV//WkK8kk3wqj+u+eg25kd/rKEVUamrnrHqVQZu8=;
        b=c874DhCs2sNumLWZcNVmAOEzXg0gvJU+nO60GuwHLf0mQFMwiWMaDT1XRFl3qYluAi
         WcGGDX8tDZMXQ8YpMniHYfEOCDbayy34x/eUO5WV6BsbCnQchU+5NxqVmCOk4JW/1GLv
         17cNCElWxOdntwD5n/3EbSXom/0Rticn7pqUI9RgsvrehCj/+KyTP8vjlkRO9P8s+OqI
         P+AVx/MjNE2u9HO3utUsbNb2Sxg1tt78ZG17AwbdmXYwb3FwnXPfHtK+S8j7K6s91msr
         NdEuDK/uQ2oghmHyEs214OAUMUGz5e/ZXoUUGoxRw6KPN+sDMfzHYdKk8KvNAwNMoyBo
         q06Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FCFBv6Bt;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b18sor4884336ybk.29.2020.05.09.19.56.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 09 May 2020 19:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dioput12@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a25:1a02:: with SMTP id a2mr14888802yba.168.1589079369094;
 Sat, 09 May 2020 19:56:09 -0700 (PDT)
MIME-Version: 1.0
From: Dio Putra <dioput12@gmail.com>
Date: Sun, 10 May 2020 09:55:57 +0700
Message-ID: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
Subject: [usb-storage] USB Attached SCSI breakage due no udev involvement
To: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dioput12@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FCFBv6Bt;       spf=pass
 (google.com: domain of dioput12@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=dioput12@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hi, it's first time for me to report user-space breakage in here, so
i'm begging your pardon.

I want to report that Linux 5.4 breaking my USB mount workflow due
udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):

$ udevadm monitor
monitor will print the received events for:
UDEV - the event which udev sends out after rule processing
KERNEL - the kernel uevent

KERNEL[4929.925420] add /devices/pci0000:00/0000:00:14.0/usb4/4-2 (usb)
KERNEL[4929.928109] add /devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0 (=
usb)
KERNEL[4929.929256] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5 (scsi)
KERNEL[4929.929316] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/scsi_host/host5
(scsi_host)
KERNEL[4929.929374] bind /devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0 =
(usb)
KERNEL[4929.929421] bind /devices/pci0000:00/0000:00:14.0/usb4/4-2 (usb)
KERNEL[4931.221449] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0
(scsi)
KERNEL[4931.221554] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0
(scsi)
KERNEL[4931.221600] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/scsi_device/5:0:0:0
(scsi_device)
KERNEL[4931.223340] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/bsg/5:0:0:0
(bsg)
KERNEL[4931.223422] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/scsi_disk/5:0:0:0
(scsi_disk)
KERNEL[4931.234657] add /devices/virtual/bdi/8:32 (bdi)
KERNEL[4931.239494] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc
(block)
KERNEL[4931.239876] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc/sdc1
(block)
KERNEL[4931.239942] add
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc/sdc2
(block)
KERNEL[4931.243863] bind
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0
(scsi)
KERNEL[4945.416243] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/bsg/5:0:0:0
(bsg)
KERNEL[4945.416590] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/scsi_device/5:0:0:0
(scsi_device)
KERNEL[4945.416971] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/scsi_disk/5:0:0:0
(scsi_disk)
KERNEL[4945.419960] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc/sdc2
(block)
KERNEL[4945.420133] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc/sdc1
(block)
KERNEL[4945.420493] remove /devices/virtual/bdi/8:32 (bdi)
KERNEL[4945.420730] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0=
/block/sdc
(block)
KERNEL[4945.424904] unbind
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0
(scsi)
KERNEL[4945.424955] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0/5:0:0:0
(scsi)
KERNEL[4945.428890] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/target5:0:0
(scsi)
KERNEL[4945.428929] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5/scsi_host/host5
(scsi_host)
KERNEL[4945.428944] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0/host5 (scsi)
KERNEL[4945.437943] unbind
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0 (usb)
KERNEL[4945.437997] remove
/devices/pci0000:00/0000:00:14.0/usb4/4-2/4-2:1.0 (usb)
KERNEL[4945.438372] unbind /devices/pci0000:00/0000:00:14.0/usb4/4-2 (usb)
KERNEL[4945.438414] remove /devices/pci0000:00/0000:00:14.0/usb4/4-2 (usb)

Where's udev involvement? In Linux 4.4.221 (Slackware64 14.2), I got
udev involvement in udevadm monitor. When digging to use strace,
here=E2=80=99s comparasion of linux-4.4.221 and linux-5.4.39:

[Slackware64-14.2 linux-kernel-4.4.221]$ sudo strace -p 2102
strace: Process 2102 attached
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
250
write(1, "KERNEL[159.846137] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
280
write(1, "KERNEL[159.847267] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\23\2\0\0\5w\305\345=
'\370\365\f"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 571
write(1, "UDEV  [159.893461] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\375\0\0\0\5w\305\34=
5\261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 293
write(1, "UDEV  [159.893666] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
286
write(1, "KERNEL[160.475104] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\375\0\0\0\5w\305\34=
5\261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 293
write(1, "UDEV  [160.476746] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
256
write(1, "KERNEL[160.478096] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\26\2\0\0\5w\305\345=
'\370\365\f"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 574
write(1, "UDEV  [160.495353] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
250
write(1, "KERNEL[161.109310] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
284
write(1, "KERNEL[161.110974] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
281
write(1, "KERNEL[161.111871] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0005\2\0\0\5w\305\345=
'\370\365\f"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 605
write(1, "UDEV  [161.142552] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/module/usb_storage\0ACTION=3Da"...=
,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
92
write(1, "KERNEL[161.175769] add      /mod"..., 57) =3D 57
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
180
write(1, "KERNEL[161.176555] add      /dev"..., 91) =3D 91
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-898902418,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0i\0\0\0M\3^\264\0\0\=
0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2170, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 145
write(1, "UDEV  [161.177095] add      /bus"..., 67) =3D 67
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
199
write(1, "KERNEL[161.177893] add      /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/bus/usb/drivers/usb-storage"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
111
write(1, "KERNEL[161.178850] add      /bus"..., 67) =3D 67
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001},
msg_iov(1)=3D[{"add@/module/uas\0ACTION=3Dadd\0DEVPA"..., 8192}],
msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
76
write(1, "KERNEL[161.180255] add      /mod"..., 49) =3D 49
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/bus/usb/drivers/uas\0ACTION=3D"...=
,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
95
write(1, "KERNEL[161.183552] add      /bus"..., 59) =3D 59
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-898902418,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0W\0\0\0008\343\243\1=
7\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2170, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 127
write(1, "UDEV  [161.184321] add      /mod"..., 49) =3D 49
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-734415143,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\376\0\0\0\5w\305\34=
5\261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2163, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 294
write(1, "UDEV  [161.185017] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-734415143,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0a\0\0\0M\3^\264\0\0\=
0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2163, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 137
write(1, "UDEV  [161.186560] add      /bus"..., 59) =3D 59
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-898902418,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\223\0\0\0)
\32(\240\5\373X"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2170, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 187
write(1, "UDEV  [161.187630] add      /dev"..., 91) =3D 91
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-898902418,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\226\0\0\0\240\5\373=
X\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2170, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 190
write(1, "UDEV  [161.188396] add      /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1483116688,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0_\0\0\0008\343\243\1=
7\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2169, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 135
write(1, "UDEV  [161.191431] add      /mod"..., 57) =3D 57
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\1\1\0\0\5w\305\345\=
261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 297
write(1, "UDEV  [161.213470] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
206
write(1, "KERNEL[162.178690] add      /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
243
write(1, "KERNEL[162.180616] add      /dev"..., 111) =3D 111
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1483116688,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\241\0\0\0)
\32(\362j\237b"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2169, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 201
write(1, "UDEV  [162.183922] add      /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/virtual/bdi/11:0\0AC"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
101
write(1, "KERNEL[162.189245] add      /dev"..., 60) =3D 60
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1483116688,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\276\0\0\0)
\32(}\265\6\265"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2169, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 230
write(1, "UDEV  [162.190743] add      /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
265
write(1, "KERNEL[162.193221] add      /dev"..., 122) =3D 122
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\260\0\0\0}\265\6\26=
5\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 216
write(1, "UDEV  [162.193442] add      /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
249
write(1, "KERNEL[162.193710] add      /dev"..., 138) =3D 138
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\313\0\0\0\r\337\330=
\241\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 243
write(1, "UDEV  [162.194084] add      /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"change@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
291
write(1, "KERNEL[162.194367] change   /dev"..., 122) =3D 122
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1483116688,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0b\0\0\0*\30\204\241\=
0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2169, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 138
write(1, "UDEV  [162.194555] add      /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
263
write(1, "KERNEL[162.194817] add      /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-898902418,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\177\5\0\0\360\3\35\=
267{\313\305\356"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2170, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 1447
write(1, "UDEV  [162.284886] add      /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1483116688,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\226\5\0\0\360\3\35\=
267{\313\305\356"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2169, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 1470
write(1, "UDEV  [162.314712] change   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
290
write(1, "KERNEL[166.130752] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
269
write(1, "KERNEL[166.131410] remove   /dev"..., 122) =3D 122
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\4\1\0\0\5w\305\345\=
261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2201, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 300
write(1, "UDEV  [166.131827] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
255
write(1, "KERNEL[166.132330] remove   /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
271
write(1, "KERNEL[166.132825] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
249
write(1, "KERNEL[166.133729] remove   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/virtual/bdi/11:0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
107
write(1, "KERNEL[166.134463] remove   /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
212
write(1, "KERNEL[166.135158] remove   /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1611903123,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\263\0\0\0}\265\6\26=
5\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2203, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 219
write(1, "UDEV  [166.139177] remove   /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-1714054644,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\316\0\0\0\r\337\330=
\241\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2202, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 246
write(1, "UDEV  [166.141750] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0e\0\0\0*\30\204\241\=
0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 141
write(1, "UDEV  [166.143549] remove   /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
205
write(1, "KERNEL[166.144683] remove   /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}, {EPOLLIN, {u32=3D4, u64=3D4}}=
], 4, -1) =3D 2
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
186
write(1, "KERNEL[166.146702] remove   /dev"..., 91) =3D 91
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\227\0\0\0\240\5\373=
X\0\0\0\0"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 191
write(1, "UDEV  [166.147656] remove   /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
287
write(1, "KERNEL[166.149954] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0,
groups=3D00000001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0},=
 0) =3D
256
write(1, "KERNEL[166.151181] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-586790545,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\202\5\0\0\360\3\35\=
267{\313\305\356"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2204, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 1450
write(1, "UDEV  [166.153308] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\277\0\0\0)
\32(}\265\6\265"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 231
write(1, "UDEV  [166.157665] remove   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\242\0\0\0)
\32(\362j\237b"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 202
write(1, "UDEV  [166.158779] remove   /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\224\0\0\0)
\32(\240\5\373X"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0,
gid=3D0}}], msg_flags=3D0}, 0) =3D 188
write(1, "UDEV  [166.159555] remove   /dev"..., 91) =3D 91
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\377\0\0\0\5w\305\34=
5\261\2Ge"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 295
write(1, "UDEV  [166.160329] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D-130618345,
groups=3D00000002},
msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0008\2\0\0\5w\305\345=
'\370\365\f"...,
8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET,
cmsg_type=3DSCM_CREDENTIALS, {pid=3D2205, uid=3D0, gid=3D0}}], msg_flags=3D=
0},
0) =3D 608
write(1, "UDEV  [166.176140] remove   /dev"..., 76) =3D 76
epoll_wait(3, 0x7ffc72d1cfa0, 4, -1)    =3D -1 EINTR (Interrupted system ca=
ll)
--- SIGINT {si_signo=3DSIGINT, si_code=3DSI_KERNEL} ---
rt_sigreturn({mask=3D[]})                 =3D -1 EINTR (Interrupted system =
call)
close(3)                                =3D 0
close(5)                                =3D 0
close(4)                                =3D 0
exit_group(0)                           =3D ?
+++ exited with 0 +++

[Slackware64-Current linux-5.4.39]$ sudo strace -p 2417
strace: Process 2417 attached
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 290
write(1, "KERNEL[672.150926] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 269
write(1, "KERNEL[672.151622] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 255
write(1, "KERNEL[672.152396] remove   /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/virtual/bdi/11:0"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 107
write(1, "KERNEL[672.153191] remove   /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 271
write(1, "KERNEL[672.153971] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 228
write(1, "KERNEL[672.158117] unbind   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 249
write(1, "KERNEL[672.160924] remove   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 212
write(1, "KERNEL[672.163188] remove   /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 205
write(1, "KERNEL[672.163690] remove   /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 186
write(1, "KERNEL[672.164134] remove   /dev"..., 91) =3D 91
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 228
write(1, "KERNEL[672.164568] unbind   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 287
write(1, "KERNEL[672.164975] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[672.165895] unbind   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[672.167049] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 252
write(1, "KERNEL[677.344330] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 280
write(1, "KERNEL[677.346145] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"bind@/devices/pci0000:00/0000:00"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 265
write(1, "KERNEL[677.347219] bind     /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 286
write(1, "KERNEL[677.708368] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[677.709587] unbind   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[677.711046] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 252
write(1, "KERNEL[678.265171] add      /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 284
write(1, "KERNEL[678.268649] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 281
write(1, "KERNEL[678.269949] add      /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 180
write(1, "KERNEL[678.271061] add      /dev"..., 91) =3D 91
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 199
write(1, "KERNEL[678.272711] add      /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"bind@/devices/pci0000:00/0000:00"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 302
write(1, "KERNEL[678.274130] bind     /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"bind@/devices/pci0000:00/0000:00"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 265
write(1, "KERNEL[678.275092] bind     /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 206
write(1, "KERNEL[679.321313] add      /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 243
write(1, "KERNEL[679.322292] add      /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"change@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 291
write(1, "KERNEL[679.323231] change   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/virtual/bdi/11:0\0AC"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 101
write(1, "KERNEL[679.326037] add      /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 265
write(1, "KERNEL[679.327089] add      /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"bind@/devices/pci0000:00/0000:00"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 255
write(1, "KERNEL[679.327990] bind     /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 249
write(1, "KERNEL[679.328962] add      /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"add@/devices/pci0000:00/0000:00:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 263
write(1, "KERNEL[679.329429] add      /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"change@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 291
write(1, "KERNEL[679.330781] change   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 290
write(1, "KERNEL[682.409253] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 269
write(1, "KERNEL[682.409938] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 255
write(1, "KERNEL[682.410766] remove   /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/virtual/bdi/11:0"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 107
write(1, "KERNEL[682.411693] remove   /dev"..., 60) =3D 60
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 271
write(1, "KERNEL[682.412453] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 228
write(1, "KERNEL[682.413236] unbind   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 249
write(1, "KERNEL[682.414003] remove   /dev"..., 111) =3D 111
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 212
write(1, "KERNEL[682.418618] remove   /dev"..., 103) =3D 103
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 205
write(1, "KERNEL[682.420463] remove   /dev"..., 112) =3D 112
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 186
write(1, "KERNEL[682.421628] remove   /dev"..., 91) =3D 91
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 228
write(1, "KERNEL[682.422795] unbind   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 287
write(1, "KERNEL[682.423969] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"unbind@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[682.424698] unbind   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0,
nl_groups=3D0x000001}, msg_namelen=3D128->12,
msg_iov=3D[{iov_base=3D"remove@/devices/pci0000:00/0000:"...,
iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_len=3D28,
cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{pid=3D0,
uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 258
write(1, "KERNEL[682.425055] remove   /dev"..., 76) =3D 76
epoll_wait(3, strace: Process 2417 detached
 <detached ...>

Here=E2=80=99s summary system information of my Slackware64 Current:

$ cd /usr/src/linux; awk -f scripts/ver_linux 2>&1
Linux ASMDT.1 5.4.39 #1 SMP Wed May 6 12:59:45 CDT 2020 x86_64
Intel(R) Celeron(R) CPU 1007U @ 1.50GHz GenuineIntel GNU/Linux

GNU C                   9.3.0
GNU Make                4.2.1
Binutils                2.33.1
Util-linux              2.35.1
Mount                   2.35.1
Module-init-tools       27
E2fsprogs               1.45.6
Jfsutils                1.1.15
Reiserfsprogs           3.6.27
Xfsprogs                5.6.0
Pcmciautils             018
Quota-tools             4.05
PPP                     2.4.8
Nfs-utils               2.4.3
Linux C Library         2.30
Dynamic linker (ldd)    2.30
Linux C++ Library       6.0.28
Procps                  3.3.16
Net-tools               2.10
Kbd                     1.15.3
Console-tools           1.15.3
Sh-utils                8.32
Udev                    243
Wireless-tools          30
Modules Loaded          ac acer_wmi af_alg agpgart algif_hash
algif_skcipher ath ath3k ath9k ath9k_common ath9k_hw battery bfq
bluetooth bnep br_netfilter bridge btbcm btintel btrtl btusb button
cec cfg80211 cmac coretemp crc32_pclmul crct10dif_pclmul drm
drm_kms_helper ecc ecdh_generic ehci_hcd ehci_pci evdev fb_sys_fops
fuse ghash_clmulni_intel hwmon i2c_algo_bit i2c_core i2c_i801 i915
iTCO_vendor_support iTCO_wdt intel_cstate intel_gtt intel_powerclamp
intel_rapl_common intel_rapl_msr intel_rapl_perf ip6_tables
ip6table_filter ip6table_mangle ip6table_nat ip_tables ipt_REJECT
iptable_filter iptable_mangle iptable_nat ipv6 irqbypass joydev kvm
kvm_intel ledtrig_audio libphy llc loop lpc_ich mac80211 mc memstick
mmc_core nf_conntrack nf_conntrack_netlink nf_defrag_ipv4
nf_defrag_ipv6 nf_nat nf_reject_ipv4 nf_tables nfnetlink overlay
pcspkr psmouse r8169 rc_core realtek rfcomm rfkill rtsx_pci
rtsx_pci_ms rtsx_pci_sdmmc serio_raw snd snd_hda_codec
snd_hda_codec_generic snd_hda_codec_hdmi snd_hda_codec_realtek
snd_hda_core snd_hda_intel snd_hwdep snd_intel_nhlt snd_pcm snd_timer
soundcore sparse_keymap stp syscopyarea sysfillrect sysimgblt tap
thermal tun uas usb_storage uvcvideo vhost vhost_net video
videobuf2_common videobuf2_memops videobuf2_v4l2 videobuf2_vmalloc
videodev wmi wmi_bmof x86_pkg_temp_thermal x_tables xhci_hcd xhci_pci
xt_CHECKSUM xt_MASQUERADE xt_addrtype xt_conntrack xt_tcpudp zram

$ cat /proc/cpuinfo
processor    : 0
vendor_id    : GenuineIntel
cpu family    : 6
model        : 58
model name    : Intel(R) Celeron(R) CPU 1007U @ 1.50GHz
stepping    : 9
microcode    : 0x12
cpu MHz        : 1150.594
cache size    : 2048 KB
physical id    : 0
siblings    : 2
core id        : 0
cpu cores    : 2
apicid        : 0
initial apicid    : 0
fpu        : yes
fpu_exception    : yes
cpuid level    : 13
wp        : yes
flags        : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe
syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl
xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
popcnt tsc_deadline_timer xsave lahf_lm cpuid_fault epb pti tpr_shadow
vnmi flexpriority ept vpid fsgsbase smep erms xsaveopt dtherm arat pln
pts
bugs        : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass
l1tf mds swapgs itlb_multihit
bogomips    : 2993.30
clflush size    : 64
cache_alignment    : 64
address sizes    : 36 bits physical, 48 bits virtual
power management:

processor    : 1
vendor_id    : GenuineIntel
cpu family    : 6
model        : 58
model name    : Intel(R) Celeron(R) CPU 1007U @ 1.50GHz
stepping    : 9
microcode    : 0x12
cpu MHz        : 928.799
cache size    : 2048 KB
physical id    : 0
siblings    : 2
core id        : 1
cpu cores    : 2
apicid        : 2
initial apicid    : 2
fpu        : yes
fpu_exception    : yes
cpuid level    : 13
wp        : yes
flags        : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge
mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe
syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl
xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor
ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic
popcnt tsc_deadline_timer xsave lahf_lm cpuid_fault epb pti tpr_shadow
vnmi flexpriority ept vpid fsgsbase smep erms xsaveopt dtherm arat pln
pts
bugs        : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass
l1tf mds swapgs itlb_multihit
bogomips    : 2993.30
clflush size    : 64
cache_alignment    : 64
address sizes    : 36 bits physical, 48 bits virtual
power management:

$ cat /proc/modules
uas 28672 0 - Live 0x0000000000000000
usb_storage 73728 1 uas, Live 0x0000000000000000
rfcomm 49152 16 - Live 0x0000000000000000
fuse 131072 2 - Live 0x0000000000000000
nf_conntrack_netlink 53248 0 - Live 0x0000000000000000
xt_addrtype 16384 2 - Live 0x0000000000000000
br_netfilter 28672 0 - Live 0x0000000000000000
overlay 118784 0 - Live 0x0000000000000000
xt_CHECKSUM 16384 1 - Live 0x0000000000000000
xt_MASQUERADE 16384 4 - Live 0x0000000000000000
xt_conntrack 16384 2 - Live 0x0000000000000000
ipt_REJECT 16384 2 - Live 0x0000000000000000
nf_reject_ipv4 16384 1 ipt_REJECT, Live 0x0000000000000000
xt_tcpudp 16384 9 - Live 0x0000000000000000
ip6table_mangle 16384 1 - Live 0x0000000000000000
ip6table_nat 16384 1 - Live 0x0000000000000000
iptable_mangle 16384 1 - Live 0x0000000000000000
iptable_nat 16384 1 - Live 0x0000000000000000
nf_nat 45056 3 xt_MASQUERADE,ip6table_nat,iptable_nat, Live 0x0000000000000=
000
nf_conntrack 139264 4
nf_conntrack_netlink,xt_MASQUERADE,xt_conntrack,nf_nat, Live
0x0000000000000000
nf_defrag_ipv4 16384 1 nf_conntrack, Live 0x0000000000000000
nf_tables 163840 0 - Live 0x0000000000000000
nfnetlink 16384 3 nf_conntrack_netlink,nf_tables, Live 0x0000000000000000
ip6table_filter 16384 1 - Live 0x0000000000000000
ip6_tables 36864 3 ip6table_mangle,ip6table_nat,ip6table_filter, Live
0x0000000000000000
iptable_filter 16384 1 - Live 0x0000000000000000
ip_tables 32768 3 iptable_mangle,iptable_nat,iptable_filter, Live
0x0000000000000000
x_tables 45056 12
xt_addrtype,xt_CHECKSUM,xt_MASQUERADE,xt_conntrack,ipt_REJECT,xt_tcpudp,ip6=
table_mangle,iptable_mangle,ip6table_filter,ip6_tables,iptable_filter,ip_ta=
bles,
Live 0x0000000000000000
bridge 200704 1 br_netfilter, Live 0x0000000000000000
zram 28672 1 - Live 0x0000000000000000
stp 16384 1 bridge, Live 0x0000000000000000
llc 16384 2 bridge,stp, Live 0x0000000000000000
vhost_net 24576 0 - Live 0x0000000000000000
vhost 53248 1 vhost_net, Live 0x0000000000000000
tap 24576 1 vhost_net, Live 0x0000000000000000
tun 57344 2 vhost_net, Live 0x0000000000000000
bfq 73728 2 - Live 0x0000000000000000
ipv6 512000 33 br_netfilter,ip6table_mangle,bridge,[permanent], Live
0x0000000000000000
nf_defrag_ipv6 16384 2 nf_conntrack,ipv6, Live 0x0000000000000000
cmac 16384 4 - Live 0x0000000000000000
algif_hash 16384 2 - Live 0x0000000000000000
algif_skcipher 16384 2 - Live 0x0000000000000000
af_alg 28672 10 algif_hash,algif_skcipher, Live 0x0000000000000000
bnep 20480 2 - Live 0x0000000000000000
uvcvideo 114688 0 - Live 0x0000000000000000
videobuf2_vmalloc 16384 1 uvcvideo, Live 0x0000000000000000
videobuf2_memops 16384 1 videobuf2_vmalloc, Live 0x0000000000000000
videobuf2_v4l2 28672 1 uvcvideo, Live 0x0000000000000000
videobuf2_common 57344 2 uvcvideo,videobuf2_v4l2, Live 0x0000000000000000
videodev 245760 3 uvcvideo,videobuf2_v4l2,videobuf2_common, Live
0x0000000000000000
mc 45056 4 uvcvideo,videobuf2_v4l2,videobuf2_common,videodev, Live
0x0000000000000000
ath3k 20480 0 - Live 0x0000000000000000
btusb 49152 0 - Live 0x0000000000000000
btrtl 16384 1 btusb, Live 0x0000000000000000
rtsx_pci_ms 16384 0 - Live 0x0000000000000000
rtsx_pci_sdmmc 20480 0 - Live 0x0000000000000000
btbcm 16384 1 btusb, Live 0x0000000000000000
btintel 20480 1 btusb, Live 0x0000000000000000
mmc_core 163840 1 rtsx_pci_sdmmc, Live 0x0000000000000000
memstick 16384 1 rtsx_pci_ms, Live 0x0000000000000000
bluetooth 413696 44 rfcomm,bnep,ath3k,btusb,btrtl,btbcm,btintel, Live
0x0000000000000000
intel_rapl_msr 20480 0 - Live 0x0000000000000000
ecdh_generic 16384 1 bluetooth, Live 0x0000000000000000
ecc 32768 1 ecdh_generic, Live 0x0000000000000000
joydev 24576 0 - Live 0x0000000000000000
acer_wmi 24576 0 - Live 0x0000000000000000
wmi_bmof 16384 0 - Live 0x0000000000000000
sparse_keymap 16384 1 acer_wmi, Live 0x0000000000000000
iTCO_wdt 16384 0 - Live 0x0000000000000000
iTCO_vendor_support 16384 1 iTCO_wdt, Live 0x0000000000000000
ath9k 139264 0 - Live 0x0000000000000000
snd_hda_codec_hdmi 57344 1 - Live 0x0000000000000000
snd_hda_codec_realtek 122880 1 - Live 0x0000000000000000
snd_hda_codec_generic 86016 1 snd_hda_codec_realtek, Live 0x000000000000000=
0
ath9k_common 20480 1 ath9k, Live 0x0000000000000000
ath9k_hw 487424 2 ath9k,ath9k_common, Live 0x0000000000000000
coretemp 16384 0 - Live 0x0000000000000000
hwmon 32768 1 coretemp, Live 0x0000000000000000
ledtrig_audio 16384 2 snd_hda_codec_realtek,snd_hda_codec_generic,
Live 0x0000000000000000
ath 36864 3 ath9k,ath9k_common,ath9k_hw, Live 0x0000000000000000
intel_rapl_common 28672 1 intel_rapl_msr, Live 0x0000000000000000
mac80211 864256 1 ath9k, Live 0x0000000000000000
x86_pkg_temp_thermal 20480 0 - Live 0x0000000000000000
intel_powerclamp 20480 0 - Live 0x0000000000000000
snd_hda_intel 45056 3 - Live 0x0000000000000000
snd_intel_nhlt 16384 1 snd_hda_intel, Live 0x0000000000000000
snd_hda_codec 151552 4
snd_hda_codec_hdmi,snd_hda_codec_realtek,snd_hda_codec_generic,snd_hda_inte=
l,
Live 0x0000000000000000
kvm_intel 315392 0 - Live 0x0000000000000000
cfg80211 819200 4 ath9k,ath9k_common,ath,mac80211, Live 0x0000000000000000
i915 2314240 5 - Live 0x0000000000000000
snd_hda_core 90112 5
snd_hda_codec_hdmi,snd_hda_codec_realtek,snd_hda_codec_generic,snd_hda_inte=
l,snd_hda_codec,
Live 0x0000000000000000
kvm 774144 1 kvm_intel, Live 0x0000000000000000
rfkill 28672 6 bluetooth,acer_wmi,cfg80211, Live 0x0000000000000000
irqbypass 16384 1 kvm, Live 0x0000000000000000
cec 61440 1 i915, Live 0x0000000000000000
r8169 90112 0 - Live 0x0000000000000000
rc_core 53248 1 cec, Live 0x0000000000000000
rtsx_pci 65536 2 rtsx_pci_ms,rtsx_pci_sdmmc, Live 0x0000000000000000
drm_kms_helper 204800 1 i915, Live 0x0000000000000000
realtek 20480 1 - Live 0x0000000000000000
drm 536576 6 i915,drm_kms_helper, Live 0x0000000000000000
crct10dif_pclmul 16384 1 - Live 0x0000000000000000
crc32_pclmul 16384 0 - Live 0x0000000000000000
ghash_clmulni_intel 16384 0 - Live 0x0000000000000000
intel_gtt 24576 1 i915, Live 0x0000000000000000
agpgart 53248 2 drm,intel_gtt, Live 0x0000000000000000
intel_cstate 20480 0 - Live 0x0000000000000000
evdev 24576 17 - Live 0x0000000000000000
i2c_algo_bit 16384 1 i915, Live 0x0000000000000000
psmouse 163840 0 - Live 0x0000000000000000
intel_rapl_perf 20480 0 - Live 0x0000000000000000
serio_raw 16384 0 - Live 0x0000000000000000
libphy 94208 2 r8169,realtek, Live 0x0000000000000000
snd_hwdep 16384 1 snd_hda_codec, Live 0x0000000000000000
fb_sys_fops 16384 1 drm_kms_helper, Live 0x0000000000000000
snd_pcm 114688 4
snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,snd_hda_core, Live
0x0000000000000000
syscopyarea 16384 1 drm_kms_helper, Live 0x0000000000000000
sysfillrect 16384 1 drm_kms_helper, Live 0x0000000000000000
pcspkr 16384 0 - Live 0x0000000000000000
sysimgblt 16384 1 drm_kms_helper, Live 0x0000000000000000
i2c_i801 32768 0 - Live 0x0000000000000000
i2c_core 81920 7
videodev,i915,drm_kms_helper,drm,i2c_algo_bit,psmouse,i2c_i801, Live
0x0000000000000000
snd_timer 36864 1 snd_pcm, Live 0x0000000000000000
wmi 32768 2 acer_wmi,wmi_bmof, Live 0x0000000000000000
snd 90112 14 snd_hda_codec_hdmi,snd_hda_codec_realtek,snd_hda_codec_generic=
,snd_hda_intel,snd_hda_codec,snd_hwdep,snd_pcm,snd_timer,
Live 0x0000000000000000
soundcore 16384 1 snd, Live 0x0000000000000000
xhci_pci 20480 0 - Live 0x0000000000000000
thermal 20480 0 - Live 0x0000000000000000
xhci_hcd 253952 1 xhci_pci, Live 0x0000000000000000
ac 16384 0 - Live 0x0000000000000000
battery 24576 0 - Live 0x0000000000000000
video 45056 2 acer_wmi,i915, Live 0x0000000000000000
ehci_pci 16384 0 - Live 0x0000000000000000
ehci_hcd 61440 1 ehci_pci, Live 0x0000000000000000
button 16384 0 - Live 0x0000000000000000
lpc_ich 28672 0 - Live 0x0000000000000000
loop 40960 0 - Live 0x0000000000000000

$ cat /proc/iomem
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : PCI Bus 0000:00
00000000-00000000 : Video ROM
00000000-00000000 : Reserved
  00000000-00000000 : System ROM
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : Reserved
00000000-00000000 : System RAM
  00000000-00000000 : Kernel code
  00000000-00000000 : Kernel data
  00000000-00000000 : Kernel bss
00000000-00000000 : Reserved
00000000-00000000 : ACPI Non-volatile Storage
00000000-00000000 : ACPI Tables
00000000-00000000 : System RAM
00000000-00000000 : Reserved
  00000000-00000000 : Graphics Stolen Memory
00000000-00000000 : PCI Bus 0000:00
  00000000-00000000 : 0000:00:02.0
  00000000-00000000 : 0000:00:02.0
  00000000-00000000 : PCI Bus 0000:02
    00000000-00000000 : 0000:02:00.2
    00000000-00000000 : 0000:02:00.2
      00000000-00000000 : r8169
  00000000-00000000 : PCI Bus 0000:03
    00000000-00000000 : 0000:03:00.0
      00000000-00000000 : ath9k
    00000000-00000000 : 0000:03:00.0
  00000000-00000000 : PCI Bus 0000:02
    00000000-00000000 : 0000:02:00.0
      00000000-00000000 : rtsx_pci
  00000000-00000000 : 0000:00:14.0
    00000000-00000000 : xhci-hcd
  00000000-00000000 : 0000:00:1b.0
    00000000-00000000 : ICH HD audio
  00000000-00000000 : 0000:00:1f.3
  00000000-00000000 : 0000:00:1f.2
    00000000-00000000 : ahci
  00000000-00000000 : 0000:00:1d.0
    00000000-00000000 : ehci_hcd
  00000000-00000000 : 0000:00:1a.0
    00000000-00000000 : ehci_hcd
  00000000-00000000 : PCI MMCONFIG 0000 [bus 00-3f]
    00000000-00000000 : Reserved
      00000000-00000000 : pnp 00:05
  00000000-00000000 : pnp 00:00
00000000-00000000 : Reserved
  00000000-00000000 : IOAPIC 0
00000000-00000000 : HPET 0
  00000000-00000000 : PNP0103:00
00000000-00000000 : Reserved
00000000-00000000 : Reserved
  00000000-00000000 : pnp 00:05
  00000000-00000000 : pnp 00:05
  00000000-00000000 : pnp 00:05
00000000-00000000 : Reserved
  00000000-00000000 : pnp 00:05
    00000000-00000000 : iTCO_wdt.1.auto
      00000000-00000000 : iTCO_wdt.1.auto
00000000-00000000 : pnp 00:05
00000000-00000000 : pnp 00:05
00000000-00000000 : pnp 00:05
00000000-00000000 : Local APIC
  00000000-00000000 : Reserved
00000000-00000000 : INT0800:00
  00000000-00000000 : Reserved
00000000-00000000 : System RAM
00000000-00000000 : RAM buffer

$ cat /proc/ioports
0000-0000 : PCI Bus 0000:00
  0000-0000 : dma1
  0000-0000 : pic1
  0000-0000 : timer0
  0000-0000 : timer1
  0000-0000 : keyboard
  0000-0000 : PNP0C09:00
    0000-0000 : EC data
  0000-0000 : keyboard
  0000-0000 : PNP0C09:00
    0000-0000 : EC cmd
  0000-0000 : rtc0
  0000-0000 : dma page reg
  0000-0000 : pic2
  0000-0000 : dma2
  0000-0000 : fpu
    0000-0000 : PNP0C04:00
  0000-0000 : vga+
  0000-0000 : pnp 00:00
    0000-0000 : ACPI PM1a_EVT_BLK
    0000-0000 : ACPI PM1a_CNT_BLK
    0000-0000 : ACPI PM_TMR
    0000-0000 : ACPI CPU throttle
    0000-0000 : ACPI GPE0_BLK
    0000-0000 : iTCO_wdt.1.auto
      0000-0000 : iTCO_wdt
    0000-0000 : ACPI PM2_CNT_BLK
  0000-0000 : pnp 00:02
  0000-0000 : pnp 00:00
    0000-0000 : iTCO_wdt.1.auto
      0000-0000 : iTCO_wdt
  0000-0000 : pnp 00:00
0000-0000 : PCI conf1
0000-0000 : PCI Bus 0000:00
  0000-0000 : pnp 00:00
  0000-0000 : PCI Bus 0000:02
    0000-0000 : 0000:02:00.2
  0000-0000 : 0000:00:02.0
  0000-0000 : 0000:00:1f.2
    0000-0000 : ahci
  0000-0000 : 0000:00:1f.2
    0000-0000 : ahci
  0000-0000 : 0000:00:1f.2
    0000-0000 : ahci
  0000-0000 : 0000:00:1f.2
    0000-0000 : ahci
  0000-0000 : 0000:00:1f.2
    0000-0000 : ahci
  0000-0000 : 0000:00:1f.3
    0000-0000 : i801_smbus
  0000-0000 : pnp 00:00
    0000-0000 : pnp 00:00

For temporary solution if I want to use USB extensively, just using
Slackware64 14.2.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAOyCV0zW_20Jq6Rrb9%3DfhZQAHeqMMs_oH=
BJdTVt8Nqje0Zoeig%40mail.gmail.com.
