Return-Path: <usb-storage+bncBCLNZ6OO5QHRBDUM6OMAMGQEJ6ZZMXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id D37F85B479C
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 19:14:55 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id a5-20020a9d2605000000b006554fc97188sf2441526otb.16
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 10:14:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662830094; cv=pass;
        d=google.com; s=arc-20160816;
        b=u2zABX/mBKRzIMmXDbNQNd+bbdgXUSv4GMSCb0BXVBsd04xHgTjT5rR/g5WTgPkqf2
         cGMjrrh7T6q9Yd/d+Pz6nnJZ4+RcEsU2r969c8jtb9k+WTxMoQYZ5MLn7rQ78R2sN1TR
         zmcuMAMotqPv0i3vk5/mt/BxWUCeMuGnQVAyS23R8kp/4GP+o6COyA3Nm3dRnpNk1N5V
         5p/xOoPIkpuYtGMxNT+mMmrKZ4dQBQxwm3t9/4P4M3P8fttfKD2Lq7VOj78fdbs5ZYZ/
         KJWH2Y5O/O9sheTL00GBIqEUPbDnvT7cg+Sd28aooUKVDS0Lju3tw7PneS9s1+RIFRG5
         aI7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=VRdsJ2lggrQEw1iIIL+8c5i3OjLP9k5RRaEAqANUnhw=;
        b=bQ/C770aUBhX0D16QnWscgyoavDhbfsAhEkMr56/BKgjN9R8e10WT1fE048iDZH9Ra
         h1RKwNgtIvWKc+swe7QWvI+fZXBoB1w1mO8ZMPJN5pIMc+utGx/LYn9EPrZfHmJbn2Bl
         TdXjE+YYXOnxfWsAwS05f0LbyJY5uhO65GMDnMx4cf1L+ZiX8/OY7UoDes8+9iU1LazG
         Y35WT+0Dv3E5uCrHY3KdqjujLhy24TgusD6UUtxuDadGiRqS+kvXBXq+1AIcYqMVMaDE
         q1mB323kqgqDGOKG2BB9YqB9xPY2LkCU5IYiAGVJvRnnHqjS4dlg6g5n1PMxhHlsPA1s
         r6rQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZVTcUhGf;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=VRdsJ2lggrQEw1iIIL+8c5i3OjLP9k5RRaEAqANUnhw=;
        b=eTdSuNNY96eOtZU/e5YakEsFQO2Nw4CtkJ10Lk0wJh8b6NxywX0Tws16+r0K7hWk7M
         0rzi6SRbWE8pNR+PPVczF4b0tUGGawwB42JCTPKuityQlkDvp26Rh+83Gcx6najOhrkj
         z9hR9QTUFf9oiq5ur7R/ZysR/1yQ9bFI03dSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=VRdsJ2lggrQEw1iIIL+8c5i3OjLP9k5RRaEAqANUnhw=;
        b=MX4CgQrnmmLNNe80ya30JjRf6C/ilR271knBUzg5lL28EsR9DtmJWQ0ELIqRTIZyk0
         kLhoCiHgJigEB7x8kMXqHvrbJ2B7FTEgfn0rc3sCDtoArEm0sKRDA3bQYtdgTer3dFda
         GtuV6V2/qSAoTV1ZYHMVJpx31ELthS8ax+JqCAOOITWULTLERZDMXByqZQqnXZakG970
         Gn5ZSAzbHwbcZKlOtjmP+i4RHWKFxMOGOl/Q0ywO0yKCL/2I8MkCYlVLYhA/X4QcyUpz
         rS4KA8UpArrsNQUD5VC1nKaQFhpkR8JpreKcBx0Ig+saZ7YLc1kuIRuig0c0yoZin516
         e2SA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2iGJYU027u9EwagGMX+eZ/xTI2Cwrbpxigyc73u3ElmS8hHuTi
	F1GuhvnEVxeKPD+cKafr5Jj7qQ==
X-Google-Smtp-Source: AA6agR6cqqanVvcRWulV1aIcZ97C9fMhywuT7S0Ayw3SOU7pPESUuVJHqsvR0Llw4yT514Kwy4yUUw==
X-Received: by 2002:a05:6808:1508:b0:344:a3be:c582 with SMTP id u8-20020a056808150800b00344a3bec582mr6401581oiw.205.1662830094337;
        Sat, 10 Sep 2022 10:14:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:6405:b0:654:9ac9:ee71 with SMTP id
 cj5-20020a056830640500b006549ac9ee71ls839451otb.4.-pod-prod-gmail; Sat, 10
 Sep 2022 10:14:54 -0700 (PDT)
X-Received: by 2002:a05:6830:20c5:b0:638:a072:5354 with SMTP id z5-20020a05683020c500b00638a0725354mr7771789otq.314.1662830093937;
        Sat, 10 Sep 2022 10:14:53 -0700 (PDT)
Received: by 2002:aca:eb82:0:b0:34d:8790:dc1b with SMTP id 5614622812f47-34d9137d965msb6e;
        Sat, 10 Sep 2022 04:52:45 -0700 (PDT)
X-Received: by 2002:a62:82c9:0:b0:53e:92e7:74a4 with SMTP id w192-20020a6282c9000000b0053e92e774a4mr16089902pfd.55.1662810764914;
        Sat, 10 Sep 2022 04:52:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662810764; cv=none;
        d=google.com; s=arc-20160816;
        b=TpucIcE8eNBL9GN/3jLfgXYYP/cEF5qpKBbV4q9LB+OeSbRWAzZZZ58M41Is1Clfwy
         NggCTwfaBdHZVUrkvj4svW0axIzxZauQde12B+j+MCEtPwFc/y282AmJOAHhaOlxSZ0m
         UpYKOtVwgYTgUwpolvyp1JluBoZbcrVSvyKBXLIsmD5lrHfr7+eCXxSCmExZkH/CHsOZ
         JCRtVGFF40vvFKGrm2IJUnV0EWzHolkI4Q7hCru5ZtLAVO8eUz3m2N/EjKG9WNEp5cHI
         Gi28gTfqXWO3m2kXEzI/hdW24phlq4eCiAEaNj5eF5cLGwkp+3XjHv90mtZHErkjxno4
         K6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EHMk+Gkweb3bpyK7xwiHvMPNe3hrzIso5kOpzCzzdPk=;
        b=Z01FDyibv2ogOjZXUg7SOHtxg1hL3SLMD34A+RnQ5jWzipzG1RmEBQrE8+GsTxvtQ5
         0OO9Tm/5y9mNiJTyuVDEccoTE4owNp5riHphdY563lMHfEcIAEELUuILvOF/WSMFwkwG
         3sddVJOymenZpdO3nPP5lrArhM24Q6hg2qa0zVYZZdtPpnLRkITOBp6QanquG1cCVf5T
         jsF+uIkd9YyEd8NeO9+DkPpg0nBhFOwbirG1HDrb8vr7U9lHYSL+pbDpsgDTTIGEkQPq
         tEiE6kmLLDep/AUQBX2yJxPESO3fjesVsfwHhamm8ZjymHO4Y6cPebiWw2ZkHDZsyqrI
         0/Qw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZVTcUhGf;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h19-20020a170902f2d300b0016f16b769ebsor1241111plc.67.2022.09.10.04.52.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 10 Sep 2022 04:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:903:2406:b0:172:a576:51c1 with SMTP id
 e6-20020a170903240600b00172a57651c1mr18330046plo.106.1662810764594; Sat, 10
 Sep 2022 04:52:44 -0700 (PDT)
MIME-Version: 1.0
From: SungHwan Jung <onenowy@gmail.com>
Date: Sat, 10 Sep 2022 20:52:33 +0900
Message-ID: <CABDuHhFj+w_YZd-bd7XQza8zNC7VjMHBoRQHqjePCceiPpeKew@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
To: jilin@nvidia.com
Cc: atanasd@gmail.com, linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/alternative; boundary="000000000000f3d2b005e8514c7e"
X-Original-Sender: onenowy@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ZVTcUhGf;       spf=pass
 (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=onenowy@gmail.com;       dmarc=pass (p=NONE
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

--000000000000f3d2b005e8514c7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> In my case device will be in hung state even issuing port reset if
> without this patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev =
wrote:
> > External email: Use caution opening links or attachments
> >
> >
> > Hello,
> >
> > Jim Lin wrote on 02.03.20 15:21:
> >> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
> >> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
> >>
> >> If data access times out, driver error handling will issue a port
> >> reset.
> >> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
> >> later Set Address or Get Descriptor command.
> >>
> >> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
> >> occurring.
> >>
> > This may need revisiting as it appears to be a performance killer (3-4
> > times slower seq reads) for otherwise perfectly working sticks.
> > Going down from 2048 to 64 seems to cause a pretty significant speed
> > degradation.
> > Here are a few examples:
> >
> > # lsusb
> > Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan
> > (formerly Feiya Technology Corp.) Flash Drive
> > # lsusb -t
> > /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/6p, 5000M
> >     |__ Port 3: Dev 12, If 0, Class=3DMass Storage, Driver=3Dusb-storag=
e,
> > 5000M
> >
> > # dmesg
> > [23153.493726] usb 2-3: Product: Flash Drive FIT
> > [23153.493729] usb 2-3: Manufacturer: Samsung
> > [23153.493731] usb 2-3: SerialNumber: 0375119090033353
> > [23153.575386] usb-storage 2-3:1.0: USB Mass Storage device detected
> > [23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid
> > 1000: 400
> > [23153.575559] scsi host2: usb-storage 2-3:1.0
> > [23153.576529] usbcore: registered new interface driver usb-storage
> > [23153.578645] usbcore: registered new interface driver uas
> >
> > # cat /proc/scsi/usb-storage/*
> >    Host scsi2: usb-storage
> >        Vendor: Samsung
> >       Product: Flash Drive FIT
> > Serial Number: 0375119090033353
> >      Protocol: Transparent SCSI
> >     Transport: Bulk
> >        Quirks: MAX_SECTORS_64 SANE_SENSE
> >
> > # hdparm -t /dev/sdb
> >  Timing buffered disk reads: 132 MB in  3.03 seconds =3D 43.62 MB/sec
> > # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> > 1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB/s
> >
> > # rmmod uas usb_storage
> > # modprobe usb_storage quirks=3D090c:1000:
> >
> > # hdparm -t /dev/sdb
> >  Timing buffered disk reads: 452 MB in  3.01 seconds =3D 150.33 MB/sec
> > # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> > 1048576000 bytes (1,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s
> >
> >
> > [23612.690798] usb 2-3: Product: Intenso High Speed Line
> > [23612.690799] usb 2-3: Manufacturer: SMI
> > [23612.690801] usb 2-3: SerialNumber: 19112500000332
> > [23612.780771] usb-storage 2-3:1.0: USB Mass Storage device detected
> > [23612.780895] usb-storage 2-3:1.0: Quirks match for vid 090c pid
> > 1000: 400
> > [23612.780940] scsi host2: usb-storage 2-3:1.0
> > [23612.781093] usbcore: registered new interface driver usb-storage
> > [23612.783226] usbcore: registered new interface driver uas
> >
> > # cat /proc/scsi/usb-storage/*
> >    Host scsi2: usb-storage
> >        Vendor: SMI
> >       Product: Intenso High Speed Line
> > Serial Number: 19112500000332
> >      Protocol: Transparent SCSI
> >     Transport: Bulk
> >        Quirks: MAX_SECTORS_64 SANE_SENSE
> >
> > # hdparm -t /dev/sdb
> >  Timing buffered disk reads: 220 MB in  3.00 seconds =3D 73.22 MB/sec
> > # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> > 1048576000 bytes (1,0 GB, 1000 MiB) copied, 11,5469 s, 90,8 MB/s
> >
> > # rmmod uas usb_storage
> > # modprobe usb_storage quirks=3D090c:1000:
> > # hdparm -t /dev/sdb
> > Timing buffered disk reads: 1016 MB in  3.00 seconds =3D 338.51 MB/sec
> > # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
> > 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s, 317 MB/s
> >
> >
> > I'm using both sticks as a bootable/emergency media (Debian stable,
> > kernel 4.19/no-quirks with X, XFCE, web browser, etc) and haven't had
> > any issues with timeouts, unresponsiveness or whatsoever.
> >
> > When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04
> > LTS/5.4) it's slow.
> >
> > Setting "options usb_storage quirks=3D090c:1000:" in /etc/modprobe.d as
> > a workaround for now.
> >
> >> Signed-off-by: Jim Lin <jilin@nvidia.com>
> >> ---
> >>   drivers/usb/storage/unusual_devs.h | 6 ++++++
> >>   1 file changed, 6 insertions(+)
> >>
> >> diff --git a/drivers/usb/storage/unusual_devs.h
> >> b/drivers/usb/storage/unusual_devs.h
> >> index 1cd9b6305b06..1880f3e13f57 100644
> >> --- a/drivers/usb/storage/unusual_devs.h
> >> +++ b/drivers/usb/storage/unusual_devs.h
> >> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
> >>               USB_SC_RBC, USB_PR_BULK, NULL,
> >>               0 ),
> >>
> >> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
> >> +             "Samsung",
> >> +             "Flash Drive FIT",
> >> +             USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >> +             US_FL_MAX_SECTORS_64),
> >> +
> >>   /* aeb */
> >>   UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
> >>               "Feiya",
> >>
> --nvpublic


I have found that the read rate of "samsung Bar plus" is slower than on
windows 11 (210MB/s -> 70MB/s) and recovered by disabling quirks (using
/etc/modprobe.d)
This patch affects not only "Samsung Flash Driver FIT", but also other usb
flash storages. (They may use the same controller?)
But I can't reproduce the timeout problem without quirks.
Could you provide information to reproduce the timeout problem or logs?
It may help us find other solutions to fix it.

Thanks,
SungHwan.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CABDuHhFj%2Bw_YZd-bd7XQza8zNC7VjMHBo=
RQHqjePCceiPpeKew%40mail.gmail.com.

--000000000000f3d2b005e8514c7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">In my ca=
se device will be in hung state even issuing port reset if<br>without this =
patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev wrote:<br><span=
 style=3D"background-image:initial;background-position:initial;background-s=
ize:initial;background-repeat:initial;background-origin:initial;background-=
clip:initial;color:rgb(0,0,102)">&gt; External email: Use caution opening l=
inks or attachments<br></span><span style=3D"background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<br=
></span><span style=3D"background-image:initial;background-position:initial=
;background-size:initial;background-repeat:initial;background-origin:initia=
l;background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><span style=3D=
"background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial;color:rgb(0,0,102)">&gt; Hello,<br></span><span style=3D"background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial;color:rgb(0=
,0,102)">&gt;<br></span><span style=3D"background-image:initial;background-=
position:initial;background-size:initial;background-repeat:initial;backgrou=
nd-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; Jim Lin =
wrote on 02.03.20 15:21:<br></span><span style=3D"background-image:initial;=
background-position:initial;background-size:initial;background-repeat:initi=
al;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&g=
t;&gt; Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,<br=
></span><span style=3D"background-image:initial;background-position:initial=
;background-size:initial;background-repeat:initial;background-origin:initia=
l;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; e.g., /sys/bus/scsi/=
devices/0:0:0:0/max_sectors<br></span><span style=3D"background-image:initi=
al;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial;color:rgb(0,0,102)"=
>&gt;&gt;<br></span><span style=3D"background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; If data =
access times out, driver error handling will issue a port<br></span><span s=
tyle=3D"background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;color:rgb(0,0,102)">&gt;&gt; reset.<br></span><span style=3D"bac=
kground-image:initial;background-position:initial;background-size:initial;b=
ackground-repeat:initial;background-origin:initial;background-clip:initial;=
color:rgb(0,0,102)">&gt;&gt; Sometimes Samsung Fit (090C:1000) flash disk w=
ill not respond to<br></span><span style=3D"background-image:initial;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;=
 later Set Address or Get Descriptor command.<br></span><span style=3D"back=
ground-image:initial;background-position:initial;background-size:initial;ba=
ckground-repeat:initial;background-origin:initial;background-clip:initial;c=
olor:rgb(0,0,102)">&gt;&gt;<br></span><span style=3D"background-image:initi=
al;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial;color:rgb(0,0,102)"=
>&gt;&gt; Adding this quirk to limit max_sectors to 64 sectors to avoid iss=
ue<br></span><span style=3D"background-image:initial;background-position:in=
itial;background-size:initial;background-repeat:initial;background-origin:i=
nitial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; occurring.<br><=
/span><span style=3D"background-image:initial;background-position:initial;b=
ackground-size:initial;background-repeat:initial;background-origin:initial;=
background-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt; This may need revisiting as it appears to b=
e a performance killer (3-4<br></span><span style=3D"background-image:initi=
al;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial;color:rgb(0,0,102)"=
>&gt; times slower seq reads) for otherwise perfectly working sticks.<br></=
span><span style=3D"background-image:initial;background-position:initial;ba=
ckground-size:initial;background-repeat:initial;background-origin:initial;b=
ackground-clip:initial;color:rgb(0,0,102)">&gt; Going down from 2048 to 64 =
seems to cause a pretty significant speed<br></span><span style=3D"backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;color=
:rgb(0,0,102)">&gt; degradation.<br></span><span style=3D"background-image:=
initial;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,=
102)">&gt; Here are a few examples:<br></span><span style=3D"background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial;color:rgb(0=
,0,102)">&gt;<br></span><span style=3D"background-image:initial;background-=
position:initial;background-size:initial;background-repeat:initial;backgrou=
nd-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; # lsusb<=
br></span><span style=3D"background-image:initial;background-position:initi=
al;background-size:initial;background-repeat:initial;background-origin:init=
ial;background-clip:initial;color:rgb(0,0,102)">&gt; Bus 002 Device 012: ID=
 090c:1000 Silicon Motion, Inc. - Taiwan<br></span><span style=3D"backgroun=
d-image:initial;background-position:initial;background-size:initial;backgro=
und-repeat:initial;background-origin:initial;background-clip:initial;color:=
rgb(0,0,102)">&gt; (formerly Feiya Technology Corp.) Flash Drive<br></span>=
<span style=3D"background-image:initial;background-position:initial;backgro=
und-size:initial;background-repeat:initial;background-origin:initial;backgr=
ound-clip:initial;color:rgb(0,0,102)">&gt; # lsusb -t<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt; /:=C2=A0 Bus 02.Port 1: Dev 1, Class=3Droot=
_hub, Driver=3Dxhci_hcd/6p, 5000M<br></span><span style=3D"background-image=
:initial;background-position:initial;background-size:initial;background-rep=
eat:initial;background-origin:initial;background-clip:initial;color:rgb(0,0=
,102)">&gt; =C2=A0=C2=A0=C2=A0 |__ Port 3: Dev 12, If 0, Class=3DMass Stora=
ge, Driver=3Dusb-storage,<br></span><span style=3D"background-image:initial=
;background-position:initial;background-size:initial;background-repeat:init=
ial;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&=
gt; 5000M<br></span><span style=3D"background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><s=
pan style=3D"background-image:initial;background-position:initial;backgroun=
d-size:initial;background-repeat:initial;background-origin:initial;backgrou=
nd-clip:initial;color:rgb(0,0,102)">&gt; # dmesg<br></span><span style=3D"b=
ackground-image:initial;background-position:initial;background-size:initial=
;background-repeat:initial;background-origin:initial;background-clip:initia=
l;color:rgb(0,0,102)">&gt; [23153.493726] usb 2-3: Product: Flash Drive FIT=
<br></span><span style=3D"background-image:initial;background-position:init=
ial;background-size:initial;background-repeat:initial;background-origin:ini=
tial;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.493729] usb 2-=
3: Manufacturer: Samsung<br></span><span style=3D"background-image:initial;=
background-position:initial;background-size:initial;background-repeat:initi=
al;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&g=
t; [23153.493731] usb 2-3: SerialNumber: 0375119090033353<br></span><span s=
tyle=3D"background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;color:rgb(0,0,102)">&gt; [23153.575386] usb-storage 2-3:1.0: USB=
 Mass Storage device detected<br></span><span style=3D"background-image:ini=
tial;background-position:initial;background-size:initial;background-repeat:=
initial;background-origin:initial;background-clip:initial;color:rgb(0,0,102=
)">&gt; [23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid<b=
r></span><span style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;color:rgb(0,0,102)">&gt; 1000: 400<br></span><sp=
an style=3D"background-image:initial;background-position:initial;background=
-size:initial;background-repeat:initial;background-origin:initial;backgroun=
d-clip:initial;color:rgb(0,0,102)">&gt; [23153.575559] scsi host2: usb-stor=
age 2-3:1.0<br></span><span style=3D"background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; [23153.576=
529] usbcore: registered new interface driver usb-storage<br></span><span s=
tyle=3D"background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;color:rgb(0,0,102)">&gt; [23153.578645] usbcore: registered new =
interface driver uas<br></span><span style=3D"background-image:initial;back=
ground-position:initial;background-size:initial;background-repeat:initial;b=
ackground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<b=
r></span><span style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;color:rgb(0,0,102)">&gt; # cat /proc/scsi/usb-st=
orage/*<br></span><span style=3D"background-image:initial;background-positi=
on:initial;background-size:initial;background-repeat:initial;background-ori=
gin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0 H=
ost scsi2: usb-storage<br></span><span style=3D"background-image:initial;ba=
ckground-position:initial;background-size:initial;background-repeat:initial=
;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;=
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Vendor: Samsung<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Product: Fla=
sh Drive FIT<br></span><span style=3D"background-image:initial;background-p=
osition:initial;background-size:initial;background-repeat:initial;backgroun=
d-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; Serial Nu=
mber: 0375119090033353<br></span><span style=3D"background-image:initial;ba=
ckground-position:initial;background-size:initial;background-repeat:initial=
;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;=
 =C2=A0=C2=A0=C2=A0=C2=A0 Protocol: Transparent SCSI<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0 Transport: Bulk<br></spa=
n><span style=3D"background-image:initial;background-position:initial;backg=
round-size:initial;background-repeat:initial;background-origin:initial;back=
ground-clip:initial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Quirks: MAX_SECTORS_64 SANE_SENSE<br></span><span style=3D"backgroun=
d-image:initial;background-position:initial;background-size:initial;backgro=
und-repeat:initial;background-origin:initial;background-clip:initial;color:=
rgb(0,0,102)">&gt;<br></span><span style=3D"background-image:initial;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; # h=
dparm -t /dev/sdb<br></span><span style=3D"background-image:initial;backgro=
und-position:initial;background-size:initial;background-repeat:initial;back=
ground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; =C2=
=A0Timing buffered disk reads: 132 MB in=C2=A0 3.03 seconds =3D 43.62 MB/se=
c<br></span><span style=3D"background-image:initial;background-position:ini=
tial;background-size:initial;background-repeat:initial;background-origin:in=
itial;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/dev/sdb o=
f=3D/dev/null bs=3D1M count=3D1000<br></span><span style=3D"background-imag=
e:initial;background-position:initial;background-size:initial;background-re=
peat:initial;background-origin:initial;background-clip:initial;color:rgb(0,=
0,102)">&gt; 1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB=
/s<br></span><span style=3D"background-image:initial;background-position:in=
itial;background-size:initial;background-repeat:initial;background-origin:i=
nitial;background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><span sty=
le=3D"background-image:initial;background-position:initial;background-size:=
initial;background-repeat:initial;background-origin:initial;background-clip=
:initial;color:rgb(0,0,102)">&gt; # rmmod uas usb_storage<br></span><span s=
tyle=3D"background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;color:rgb(0,0,102)">&gt; # modprobe usb_storage quirks=3D090c:10=
00:<br></span><span style=3D"background-image:initial;background-position:i=
nitial;background-size:initial;background-repeat:initial;background-origin:=
initial;background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><span st=
yle=3D"background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br></span><span sty=
le=3D"background-image:initial;background-position:initial;background-size:=
initial;background-repeat:initial;background-origin:initial;background-clip=
:initial;color:rgb(0,0,102)">&gt; =C2=A0Timing buffered disk reads: 452 MB =
in=C2=A0 3.01 seconds =3D 150.33 MB/sec<br></span><span style=3D"background=
-image:initial;background-position:initial;background-size:initial;backgrou=
nd-repeat:initial;background-origin:initial;background-clip:initial;color:r=
gb(0,0,102)">&gt; # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000<br=
></span><span style=3D"background-image:initial;background-position:initial=
;background-size:initial;background-repeat:initial;background-origin:initia=
l;background-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB=
, 1000 MiB) copied, 6,51492 s, 161 MB/s<br></span><span style=3D"background=
-image:initial;background-position:initial;background-size:initial;backgrou=
nd-repeat:initial;background-origin:initial;background-clip:initial;color:r=
gb(0,0,102)">&gt;<br></span><span style=3D"background-image:initial;backgro=
und-position:initial;background-size:initial;background-repeat:initial;back=
ground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<br><=
/span><span style=3D"background-image:initial;background-position:initial;b=
ackground-size:initial;background-repeat:initial;background-origin:initial;=
background-clip:initial;color:rgb(0,0,102)">&gt; [23612.690798] usb 2-3: Pr=
oduct: Intenso High Speed Line<br></span><span style=3D"background-image:in=
itial;background-position:initial;background-size:initial;background-repeat=
:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,10=
2)">&gt; [23612.690799] usb 2-3: Manufacturer: SMI<br></span><span style=3D=
"background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial;color:rgb(0,0,102)">&gt; [23612.690801] usb 2-3: SerialNumber: 19112500=
000332<br></span><span style=3D"background-image:initial;background-positio=
n:initial;background-size:initial;background-repeat:initial;background-orig=
in:initial;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.780771] =
usb-storage 2-3:1.0: USB Mass Storage device detected<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt; [23612.780895] usb-storage 2-3:1.0: Quirks =
match for vid 090c pid<br></span><span style=3D"background-image:initial;ba=
ckground-position:initial;background-size:initial;background-repeat:initial=
;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;=
 1000: 400<br></span><span style=3D"background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.7809=
40] scsi host2: usb-storage 2-3:1.0<br></span><span style=3D"background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial;color:rgb(0=
,0,102)">&gt; [23612.781093] usbcore: registered new interface driver usb-s=
torage<br></span><span style=3D"background-image:initial;background-positio=
n:initial;background-size:initial;background-repeat:initial;background-orig=
in:initial;background-clip:initial;color:rgb(0,0,102)">&gt; [23612.783226] =
usbcore: registered new interface driver uas<br></span><span style=3D"backg=
round-image:initial;background-position:initial;background-size:initial;bac=
kground-repeat:initial;background-origin:initial;background-clip:initial;co=
lor:rgb(0,0,102)">&gt;<br></span><span style=3D"background-image:initial;ba=
ckground-position:initial;background-size:initial;background-repeat:initial=
;background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;=
 # cat /proc/scsi/usb-storage/*<br></span><span style=3D"background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,1=
02)">&gt; =C2=A0=C2=A0 Host scsi2: usb-storage<br></span><span style=3D"bac=
kground-image:initial;background-position:initial;background-size:initial;b=
ackground-repeat:initial;background-origin:initial;background-clip:initial;=
color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Vendor: SMI<b=
r></span><span style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Product: Intenso High Speed Line<br></span><span style=3D"backgro=
und-image:initial;background-position:initial;background-size:initial;backg=
round-repeat:initial;background-origin:initial;background-clip:initial;colo=
r:rgb(0,0,102)">&gt; Serial Number: 19112500000332<br></span><span style=3D=
"background-image:initial;background-position:initial;background-size:initi=
al;background-repeat:initial;background-origin:initial;background-clip:init=
ial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=A0=C2=A0 Protocol: Transparent=
 SCSI<br></span><span style=3D"background-image:initial;background-position=
:initial;background-size:initial;background-repeat:initial;background-origi=
n:initial;background-clip:initial;color:rgb(0,0,102)">&gt; =C2=A0=C2=A0=C2=
=A0 Transport: Bulk<br></span><span style=3D"background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Quirks: MAX_SECTORS_64 SANE_SENSE<br><=
/span><span style=3D"background-image:initial;background-position:initial;b=
ackground-size:initial;background-repeat:initial;background-origin:initial;=
background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><span style=3D"b=
ackground-image:initial;background-position:initial;background-size:initial=
;background-repeat:initial;background-origin:initial;background-clip:initia=
l;color:rgb(0,0,102)">&gt; # hdparm -t /dev/sdb<br></span><span style=3D"ba=
ckground-image:initial;background-position:initial;background-size:initial;=
background-repeat:initial;background-origin:initial;background-clip:initial=
;color:rgb(0,0,102)">&gt; =C2=A0Timing buffered disk reads: 220 MB in=C2=A0=
 3.00 seconds =3D 73.22 MB/sec<br></span><span style=3D"background-image:in=
itial;background-position:initial;background-size:initial;background-repeat=
:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,10=
2)">&gt; # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000<br></span><=
span style=3D"background-image:initial;background-position:initial;backgrou=
nd-size:initial;background-repeat:initial;background-origin:initial;backgro=
und-clip:initial;color:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB, 1000 Mi=
B) copied, 11,5469 s, 90,8 MB/s<br></span><span style=3D"background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,1=
02)">&gt;<br></span><span style=3D"background-image:initial;background-posi=
tion:initial;background-size:initial;background-repeat:initial;background-o=
rigin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; # rmmod uas =
usb_storage<br></span><span style=3D"background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; # modprobe=
 usb_storage quirks=3D090c:1000:<br></span><span style=3D"background-image:=
initial;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,=
102)">&gt; # hdparm -t /dev/sdb<br></span><span style=3D"background-image:i=
nitial;background-position:initial;background-size:initial;background-repea=
t:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,1=
02)">&gt; Timing buffered disk reads: 1016 MB in=C2=A0 3.00 seconds =3D 338=
.51 MB/sec<br></span><span style=3D"background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; # dd if=3D/=
dev/sdb of=3D/dev/null bs=3D1M count=3D1000<br></span><span style=3D"backgr=
ound-image:initial;background-position:initial;background-size:initial;back=
ground-repeat:initial;background-origin:initial;background-clip:initial;col=
or:rgb(0,0,102)">&gt; 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s=
, 317 MB/s<br></span><span style=3D"background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<br></span><=
span style=3D"background-image:initial;background-position:initial;backgrou=
nd-size:initial;background-repeat:initial;background-origin:initial;backgro=
und-clip:initial;color:rgb(0,0,102)">&gt;<br></span><span style=3D"backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;color=
:rgb(0,0,102)">&gt; I&#39;m using both sticks as a bootable/emergency media=
 (Debian stable,<br></span><span style=3D"background-image:initial;backgrou=
nd-position:initial;background-size:initial;background-repeat:initial;backg=
round-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; kerne=
l 4.19/no-quirks with X, XFCE, web browser, etc) and haven&#39;t had<br></s=
pan><span style=3D"background-image:initial;background-position:initial;bac=
kground-size:initial;background-repeat:initial;background-origin:initial;ba=
ckground-clip:initial;color:rgb(0,0,102)">&gt; any issues with timeouts, un=
responsiveness or whatsoever.<br></span><span style=3D"background-image:ini=
tial;background-position:initial;background-size:initial;background-repeat:=
initial;background-origin:initial;background-clip:initial;color:rgb(0,0,102=
)">&gt;<br></span><span style=3D"background-image:initial;background-positi=
on:initial;background-size:initial;background-repeat:initial;background-ori=
gin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; When tested wi=
th recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04<br></span><span st=
yle=3D"background-image:initial;background-position:initial;background-size=
:initial;background-repeat:initial;background-origin:initial;background-cli=
p:initial;color:rgb(0,0,102)">&gt; LTS/5.4) it&#39;s slow.<br></span><span =
style=3D"background-image:initial;background-position:initial;background-si=
ze:initial;background-repeat:initial;background-origin:initial;background-c=
lip:initial;color:rgb(0,0,102)">&gt;<br></span><span style=3D"background-im=
age:initial;background-position:initial;background-size:initial;background-=
repeat:initial;background-origin:initial;background-clip:initial;color:rgb(=
0,0,102)">&gt; Setting &quot;options usb_storage quirks=3D090c:1000:&quot; =
in /etc/modprobe.d as<br></span><span style=3D"background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt; =
a workaround for now.<br></span><span style=3D"background-image:initial;bac=
kground-position:initial;background-size:initial;background-repeat:initial;=
background-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;<=
br></span><span style=3D"background-image:initial;background-position:initi=
al;background-size:initial;background-repeat:initial;background-origin:init=
ial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; Signed-off-by: Jim=
 Lin &lt;<a href=3D"mailto:jilin@nvidia.com" target=3D"_blank">jilin@nvidia=
.com</a>&gt;<br></span><span style=3D"background-image:initial;background-p=
osition:initial;background-size:initial;background-repeat:initial;backgroun=
d-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; ---<b=
r></span><span style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; =C2=A0 drivers/usb/=
storage/unusual_devs.h | 6 ++++++<br></span><span style=3D"background-image=
:initial;background-position:initial;background-size:initial;background-rep=
eat:initial;background-origin:initial;background-clip:initial;color:rgb(0,0=
,102)">&gt;&gt; =C2=A0 1 file changed, 6 insertions(+)<br></span><span styl=
e=3D"background-image:initial;background-position:initial;background-size:i=
nitial;background-repeat:initial;background-origin:initial;background-clip:=
initial;color:rgb(0,0,102)">&gt;&gt;<br></span><span style=3D"background-im=
age:initial;background-position:initial;background-size:initial;background-=
repeat:initial;background-origin:initial;background-clip:initial;color:rgb(=
0,0,102)">&gt;&gt; diff --git a/drivers/usb/storage/unusual_devs.h<br></spa=
n><span style=3D"background-image:initial;background-position:initial;backg=
round-size:initial;background-repeat:initial;background-origin:initial;back=
ground-clip:initial;color:rgb(0,0,102)">&gt;&gt; b/drivers/usb/storage/unus=
ual_devs.h<br></span><span style=3D"background-image:initial;background-pos=
ition:initial;background-size:initial;background-repeat:initial;background-=
origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; index 1=
cd9b6305b06..1880f3e13f57 100644<br></span><span style=3D"background-image:=
initial;background-position:initial;background-size:initial;background-repe=
at:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,=
102)">&gt;&gt; --- a/drivers/usb/storage/unusual_devs.h<br></span><span sty=
le=3D"background-image:initial;background-position:initial;background-size:=
initial;background-repeat:initial;background-origin:initial;background-clip=
:initial;color:rgb(0,0,102)">&gt;&gt; +++ b/drivers/usb/storage/unusual_dev=
s.h<br></span><span style=3D"background-image:initial;background-position:i=
nitial;background-size:initial;background-repeat:initial;background-origin:=
initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; @@ -1258,6 +12=
58,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 USB_SC_RBC, USB_PR_BULK, NULL,<br><=
/span><span style=3D"background-image:initial;background-position:initial;b=
ackground-size:initial;background-repeat:initial;background-origin:initial;=
background-clip:initial;color:rgb(0,0,102)">&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 ),<br></span><s=
pan style=3D"background-image:initial;background-position:initial;backgroun=
d-size:initial;background-repeat:initial;background-origin:initial;backgrou=
nd-clip:initial;color:rgb(0,0,102)">&gt;&gt;<br></span><span style=3D"backg=
round-image:initial;background-position:initial;background-size:initial;bac=
kground-repeat:initial;background-origin:initial;background-clip:initial;co=
lor:rgb(0,0,102)">&gt;&gt; +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,<br>=
</span><span style=3D"background-image:initial;background-position:initial;=
background-size:initial;background-repeat:initial;background-origin:initial=
;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Samsung&quot;,=
<br></span><span style=3D"background-image:initial;background-position:init=
ial;background-size:initial;background-repeat:initial;background-origin:ini=
tial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Flash Drive=
 FIT&quot;,<br></span><span style=3D"background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt; +=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 USB_S=
C_DEVICE, USB_PR_DEVICE, NULL,<br></span><span style=3D"background-image:in=
itial;background-position:initial;background-size:initial;background-repeat=
:initial;background-origin:initial;background-clip:initial;color:rgb(0,0,10=
2)">&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 US_FL_MAX_SECTORS_64),<br></span><span style=3D"background-ima=
ge:initial;background-position:initial;background-size:initial;background-r=
epeat:initial;background-origin:initial;background-clip:initial;color:rgb(0=
,0,102)">&gt;&gt; +<br></span><span style=3D"background-image:initial;backg=
round-position:initial;background-size:initial;background-repeat:initial;ba=
ckground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt=
; =C2=A0 /* aeb */<br></span><span style=3D"background-image:initial;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;color:rgb(0,0,102)">&gt;&gt;=
 =C2=A0 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,<br></span><span style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,102)">&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;Feiya&quot;,<br></span><span =
style=3D"background-image:initial;background-position:initial;background-si=
ze:initial;background-repeat:initial;background-origin:initial;background-c=
lip:initial;color:rgb(0,0,102)">&gt;&gt;<br></span>--nvpublic</blockquote><=
div><br></div><div>I have found that the read rate of &quot;samsung Bar plu=
s&quot; is slower than on windows 11 (210MB/s -&gt; 70MB/s) and recovered b=
y disabling quirks (using /etc/modprobe.d)</div><div>This patch affects not=
 only &quot;Samsung Flash Driver FIT&quot;, but also other usb flash storag=
es. (They may use the same=C2=A0controller?)</div><div>But I=C2=A0can&#39;t=
 reproduce the timeout problem without quirks.</div><div>Could you provide =
information to reproduce the timeout problem or logs?<br></div><div>It may =
help us find other solutions to fix it.</div><div><br></div><div>Thanks,</d=
iv><div>SungHwan.</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABDuHhFj%2Bw_YZd-bd7XQza=
8zNC7VjMHBoRQHqjePCceiPpeKew%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CABDuHhFj%2Bw_YZd-bd7XQza8zNC7VjMHBoRQHqjePCceiPpeKew%40mail.gmail=
.com</a>.<br />

--000000000000f3d2b005e8514c7e--
