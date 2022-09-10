Return-Path: <usb-storage+bncBD55ZTESYMCBBDUM6OMAMGQEW2FJ6RY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 736FD5B479A
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 19:14:55 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id e19-20020ad44433000000b004aaa7d00846sf3369834qvt.0
        for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 10:14:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662830094; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZObGDL1UxI8HYZd99FyE4YlSxQ2gGgxENMQOHHlnR621yEFhq+oyZJpFm4sZnuavz
         BjPB1/LJIrpACxV37m9O6seojywjnTRGmiMPwidu+9TzVYjG7ouND8RyFwaKc6frhS95
         Vk63K1t098sb3e1p4+gpWoe/xyEu21nG6EIhtDjPHBYreqHpbOfiOd7yzd+kqf8rGPSc
         Qo3TpNFbZ9CoRfxG8zLP9zkbWJ2fagpvUJ6aBO4uzncxJH0CJHmlRnWQr0Xwf7lSD1rZ
         TZgVxkM04+tuXeIenOh+7L+Nh1Xp2K+9gV3a0H7x1JQSuo7tbJ2vNkD+sTZE+lFI7odx
         iI1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=nXc820TTckqh83wg3XYzF/jXN8B85xa2JU3Qij4Xu48=;
        b=VeaTBOU/NlwwMXMDE38SMS8ru9Opp6tMFSNnKg+wZ1viePXYTstvb8tqcNEKDjZN64
         TLmq8qC/8CoZfvOVsKStnUerHHWmXTS/d4DyOldqtEpq6ZzP7ijBKXPlXT6SgeoZQiZf
         JlYwuCgBhhC3orS4kPdb8Zu4XMw7CJ7DHZC1H/VmHjcg94L7y9uoDB+8lVb/z+O0ykd8
         hhh/xXMUL1nYNC6CpcG4dsteXY46PkyYpDsG6SBsKqR6wGRiDCmjqKllX0k4vv8k+gWd
         PE+PaKzP4hnqck9CgYyR07iUAjZ5ysWahpLjuy8oHJODuEjxEU519bqGMCtGkiWfj0nC
         k0RA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cs+nhaJe;
       spf=pass (google.com: domain of nowy08@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nowy08@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=nXc820TTckqh83wg3XYzF/jXN8B85xa2JU3Qij4Xu48=;
        b=Lu3BXTYsEAyrnzerm96HwDSoNyfg5m5fPOV7GQVEKhNPK+5pmaWCC/M2cv1HoTD24K
         V8ozGdpyQEXYP5i1iIYHQdlmESAnkjVwXjuVlV7qT1XQl9+IzwxfLn3QhZ0plrwmTKHi
         x6HIIZeNQwp8J/2IQ7+rkj2MXJ1bVk+aBltY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=nXc820TTckqh83wg3XYzF/jXN8B85xa2JU3Qij4Xu48=;
        b=P7ojyBYojfzcR8KXu6gQrpFzbtLzMJ+MjMxU4zOglt84z+w6sUm1g3ziqvKIPrfn5s
         o6K9I3spbEgxe3ZnZ8gVL8ThsXmK9XkKDqVwIyY5DAyeYlqY8QYpQ4+vG1ccOIVkeOdm
         TFAWukiCB8yxofMgIeB510EAuMzjGq3rVedYzG2ptGgPwwUu+7IQ/WOq6hheKzfcBz5q
         T/LlHP5MZYDPR2d6/8QeUpDYmeyjlxxxi9oREXuJ0/x/9ROwiTuN3Fgz8Z024Dx0yFOP
         JIEmSmlsVwyVu+LTkWH9Rx7jH4KnWpAYzzvY06SHSXhuZ0XqrtecHAzhuzccixMyma/Q
         MHTQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2pJ3B2Sm5O2dFnwMmoSlPrnKsxPyZ24xuBlo309L4Xm0CWnzng
	Fzc9ht2tj+0LeqMlAz/dWmiheg==
X-Google-Smtp-Source: AA6agR4Joosn+xAOIM0cyhfyXmQzF6xORoqo7nOMGcZZt2NRkvn081uiI7739oRC5XTw9H7MWwVZjQ==
X-Received: by 2002:a05:6214:262d:b0:4aa:1756:a3c6 with SMTP id gv13-20020a056214262d00b004aa1756a3c6mr16655052qvb.42.1662830094360;
        Sat, 10 Sep 2022 10:14:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ae9:c30e:0:b0:6ba:dab3:232f with SMTP id n14-20020ae9c30e000000b006badab3232fls4884425qkg.5.-pod-prod-gmail;
 Sat, 10 Sep 2022 10:14:54 -0700 (PDT)
X-Received: by 2002:a05:620a:4394:b0:6be:6fdb:a7b2 with SMTP id a20-20020a05620a439400b006be6fdba7b2mr13398273qkp.345.1662830094031;
        Sat, 10 Sep 2022 10:14:54 -0700 (PDT)
Received: by 2002:a05:620a:448e:b0:6b5:7704:e93a with SMTP id af79cd13be357-6cc967aae85ms85a;
        Sat, 10 Sep 2022 04:57:26 -0700 (PDT)
X-Received: by 2002:a1c:2743:0:b0:3b3:f017:f23a with SMTP id n64-20020a1c2743000000b003b3f017f23amr5041192wmn.137.1662811045947;
        Sat, 10 Sep 2022 04:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662811045; cv=none;
        d=google.com; s=arc-20160816;
        b=tnZnyeiYsi8NYlwsxuH740SG11a/ZOVlTxS+R+66FFFanXFz+UKnqBQDe4gf7p1g/w
         dMz/FfQaPTl0+z0psyJ9VLlUiK65fKPjBR/cOeSMbjevVZ7erMV31B7vj76jWgOO5Srk
         5PI/fdeieo4E67yK2xEfg3mtnXI6jW4NagMheaaMtB0W02b0SgtCT6+Jq4fHb+Kg+pax
         fINpHswyaFAszy4sI2b3AQ/6lfPEj2gNwtWbyrMap4NkNtDFxpmcCGJaFMhuFq3WsGZM
         ZRt4kcQaWelMUz0zE5BmSG0WwzFdqZfOBQh/0iJy5K3FgJSXAr+u2jzDu+WWr490oEcJ
         fo+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=5/c40ayqGxg/A2Z/hm0Oulgj3EOkQnj9eoLKmPsrSLQ=;
        b=ucTLPNhwWtvTK2QljQcomxCNpsFw6UnJSt2V+it7VAi8orzlbIw/UiwEQxdHs1SU4R
         ywxde9hTogZ8syxUkXmDGCRaZM8hQCQmUS7y0Yy4ghCIbolaW7FGA/vDqSwS66M0m+RO
         7TToMBU8q/TY3E2ZuecJXtTUs1u0FHS4zscDN4Cwr+j1MW1XxOJZAscjsL/X8+DHFNLP
         q0yhi5Bb3aSChMUjhFAom3qrTyea9eY7MKV0qJGj4CgwYsr4l1Z8t2gAD2TCYIAX50+O
         G9u6EJ/tGXt0YEPhK/Ou/pL8iVaACgdwVhNAg7i/SaWc0s+yHOpwTz/QXfQMmR9hC+zA
         ve+w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cs+nhaJe;
       spf=pass (google.com: domain of nowy08@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nowy08@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r28-20020adfa15c000000b00225670587e5sor1517891wrr.42.2022.09.10.04.57.25
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 10 Sep 2022 04:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nowy08@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a5d:540d:0:b0:22a:4069:1e3e with SMTP id
 g13-20020a5d540d000000b0022a40691e3emr3675591wrv.239.1662811045594; Sat, 10
 Sep 2022 04:57:25 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?7KCV7ISx7ZmY?= <nowy08@gmail.com>
Date: Sat, 10 Sep 2022 20:57:14 +0900
Message-ID: <CAF52AWiuBQRG-onj7MDsH-wAkD40eS6j_CiPDAy4UFO2dyYUaQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
To: jilin@nvidia.com
Cc: atanasd@gmail.com, linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: multipart/alternative; boundary="000000000000b389ac05e8515d39"
X-Original-Sender: nowy08@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=cs+nhaJe;       spf=pass
 (google.com: domain of nowy08@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=nowy08@gmail.com;       dmarc=pass (p=NONE
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

--000000000000b389ac05e8515d39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>In my case device will be in hung state even issuing port reset if
>without this patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889:56, Atanas Dinev w=
rote:
>> External email: Use caution opening links or attachments
>>
>>
>> Hello,
>>
>> Jim Lin wrote on 02.03.20 15:21:
>>>> Current driver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,
>>>> e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors
>>>>
>>>> If data access times out, driver error handling will issue a port
>>>> reset.
>>>> Sometimes Samsung Fit (090C:1000) flash disk will not respond to
>>>> later Set Address or Get Descriptor command.
>>>>
>>>> Adding this quirk to limit max_sectors to 64 sectors to avoid issue
>>>> occurring.
>>>>
>> This may need revisiting as it appears to be a performance killer (3-4
>> times slower seq reads) for otherwise perfectly working sticks.
>> Going down from 2048 to 64 seems to cause a pretty significant speed
>> degradation.
>> Here are a few examples:
>>
>> # lsusb
>> Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan
>> (formerly Feiya Technology Corp.) Flash Drive
>> # lsusb -t
>> /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dxhci_hcd/6p, 5000M
>>     |__ Port 3: Dev 12, If 0, Class=3DMass Storage, Driver=3Dusb-storage=
,
>> 5000M
>>
>> # dmesg
>> [23153.493726] usb 2-3: Product: Flash Drive FIT
>> [23153.493729] usb 2-3: Manufacturer: Samsung
>> [23153.493731] usb 2-3: SerialNumber: 0375119090033353
>> [23153.575386] usb-storage 2-3:1.0: USB Mass Storage device detected
>> [23153.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid
>> 1000: 400
>> [23153.575559] scsi host2: usb-storage 2-3:1.0
>> [23153.576529] usbcore: registered new interface driver usb-storage
>> [23153.578645] usbcore: registered new interface driver uas
>>
>> # cat /proc/scsi/usb-storage/*
>>    Host scsi2: usb-storage
>>        Vendor: Samsung
>>       Product: Flash Drive FIT
>> Serial Number: 0375119090033353
>>      Protocol: Transparent SCSI
>>     Transport: Bulk
>>        Quirks: MAX_SECTORS_64 SANE_SENSE
>>
>> # hdparm -t /dev/sdb
>>  Timing buffered disk reads: 132 MB in  3.03 seconds =3D 43.62 MB/sec
>> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
>> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 22,3564 s, 46,9 MB/s
>>
>> # rmmod uas usb_storage
>> # modprobe usb_storage quirks=3D090c:1000:
>>
>> # hdparm -t /dev/sdb
>>  Timing buffered disk reads: 452 MB in  3.01 seconds =3D 150.33 MB/sec
>> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
>> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s
>>
>>
>> [23612.690798] usb 2-3: Product: Intenso High Speed Line
>> [23612.690799] usb 2-3: Manufacturer: SMI
>> [23612.690801] usb 2-3: SerialNumber: 19112500000332
>> [23612.780771] usb-storage 2-3:1.0: USB Mass Storage device detected
>> [23612.780895] usb-storage 2-3:1.0: Quirks match for vid 090c pid
>> 1000: 400
>> [23612.780940] scsi host2: usb-storage 2-3:1.0
>> [23612.781093] usbcore: registered new interface driver usb-storage
>> [23612.783226] usbcore: registered new interface driver uas
>>
>> # cat /proc/scsi/usb-storage/*
>>    Host scsi2: usb-storage
>>        Vendor: SMI
>>       Product: Intenso High Speed Line
>> Serial Number: 19112500000332
>>      Protocol: Transparent SCSI
>>     Transport: Bulk
>>        Quirks: MAX_SECTORS_64 SANE_SENSE
>>
>> # hdparm -t /dev/sdb
>>  Timing buffered disk reads: 220 MB in  3.00 seconds =3D 73.22 MB/sec
>> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
>> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 11,5469 s, 90,8 MB/s
>>
>> # rmmod uas usb_storage
>> # modprobe usb_storage quirks=3D090c:1000:
>> # hdparm -t /dev/sdb
>> Timing buffered disk reads: 1016 MB in  3.00 seconds =3D 338.51 MB/sec
>> # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M count=3D1000
>> 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022 s, 317 MB/s
>>
>>
>> I'm using both sticks as a bootable/emergency media (Debian stable,
>> kernel 4.19/no-quirks with X, XFCE, web browser, etc) and haven't had
>> any issues with timeouts, unresponsiveness or whatsoever.
>>
>> When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04
>> LTS/5.4) it's slow.
>>
>> Setting "options usb_storage quirks=3D090c:1000:" in /etc/modprobe.d as
>> a workaround for now.
>>
>>>> Signed-off-by: Jim Lin <jilin@nvidia.com>>
>>>> ---
>>>>   drivers/usb/storage/unusual_devs.h | 6 ++++++
>>>>   1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/usb/storage/unusual_devs.h
>>>> b/drivers/usb/storage/unusual_devs.h
>>>> index 1cd9b6305b06..1880f3e13f57 100644
>>>> --- a/drivers/usb/storage/unusual_devs.h
>>>> +++ b/drivers/usb/storage/unusual_devs.h
>>>> @@ -1258,6 +1258,12 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
>>>>               USB_SC_RBC, USB_PR_BULK, NULL,
>>>>               0 ),
>>>>
>>>> +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
>>>> +             "Samsung",
>>>> +             "Flash Drive FIT",
>>>> +             USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>>> +             US_FL_MAX_SECTORS_64),
>>>> +
>>>>   /* aeb */
>>>>   UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
>>>>               "Feiya",
>>>>
>--nvpublic

I have found that the read rate of "samsung Bar plus" is slower than on
windows 11 (210mb/s ->> 70mb/s) and recovered by disabling quirks (using
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
one-eyed-alien.net/d/msgid/usb-storage/CAF52AWiuBQRG-onj7MDsH-wAkD40eS6j_Ci=
PDAy4UFO2dyYUaQ%40mail.gmail.com.

--000000000000b389ac05e8515d39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;In my case device will be in hung state even issuing p=
ort reset if<br>&gt;without this patch. jim On 2020/5/2 =E4=B8=8B=E5=8D=889=
:56, Atanas Dinev wrote:<br>&gt;&gt; External email: Use caution opening li=
nks or attachments<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; Hello,<br>&gt;&gt;<b=
r>&gt;&gt; Jim Lin wrote on 02.03.20 15:21:<br>&gt;&gt;&gt;&gt; Current dri=
ver has 240 (USB2.0) and 2048 (USB3.0) as max_sectors,<br>&gt;&gt;&gt;&gt; =
e.g., /sys/bus/scsi/devices/0:0:0:0/max_sectors<br>&gt;&gt;&gt;&gt;<br>&gt;=
&gt;&gt;&gt; If data access times out, driver error handling will issue a p=
ort<br>&gt;&gt;&gt;&gt; reset.<br>&gt;&gt;&gt;&gt; Sometimes Samsung Fit (0=
90C:1000) flash disk will not respond to<br>&gt;&gt;&gt;&gt; later Set Addr=
ess or Get Descriptor command.<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Addi=
ng this quirk to limit max_sectors to 64 sectors to avoid issue<br>&gt;&gt;=
&gt;&gt; occurring.<br>&gt;&gt;&gt;&gt;<br>&gt;&gt; This may need revisitin=
g as it appears to be a performance killer (3-4<br>&gt;&gt; times slower se=
q reads) for otherwise perfectly working sticks.<br>&gt;&gt; Going down fro=
m 2048 to 64 seems to cause a pretty significant speed<br>&gt;&gt; degradat=
ion.<br>&gt;&gt; Here are a few examples:<br>&gt;&gt;<br>&gt;&gt; # lsusb<b=
r>&gt;&gt; Bus 002 Device 012: ID 090c:1000 Silicon Motion, Inc. - Taiwan<b=
r>&gt;&gt; (formerly Feiya Technology Corp.) Flash Drive<br>&gt;&gt; # lsus=
b -t<br>&gt;&gt; /: =C2=A0Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3D=
xhci_hcd/6p, 5000M<br>&gt;&gt; =C2=A0 =C2=A0 |__ Port 3: Dev 12, If 0, Clas=
s=3DMass Storage, Driver=3Dusb-storage,<br>&gt;&gt; 5000M<br>&gt;&gt;<br>&g=
t;&gt; # dmesg<br>&gt;&gt; [23153.493726] usb 2-3: Product: Flash Drive FIT=
<br>&gt;&gt; [23153.493729] usb 2-3: Manufacturer: Samsung<br>&gt;&gt; [231=
53.493731] usb 2-3: SerialNumber: 0375119090033353<br>&gt;&gt; [23153.57538=
6] usb-storage 2-3:1.0: USB Mass Storage device detected<br>&gt;&gt; [23153=
.575514] usb-storage 2-3:1.0: Quirks match for vid 090c pid<br>&gt;&gt; 100=
0: 400<br>&gt;&gt; [23153.575559] scsi host2: usb-storage 2-3:1.0<br>&gt;&g=
t; [23153.576529] usbcore: registered new interface driver usb-storage<br>&=
gt;&gt; [23153.578645] usbcore: registered new interface driver uas<br>&gt;=
&gt;<br>&gt;&gt; # cat /proc/scsi/usb-storage/*<br>&gt;&gt; =C2=A0 =C2=A0Ho=
st scsi2: usb-storage<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0Vendor: Samsun=
g<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 Product: Flash Drive FIT<br>&gt;&gt; Ser=
ial Number: 0375119090033353<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0Protocol: Tran=
sparent SCSI<br>&gt;&gt; =C2=A0 =C2=A0 Transport: Bulk<br>&gt;&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Quirks: MAX_SECTORS_64 SANE_SENSE<br>&gt;&gt;<br>&gt;&g=
t; # hdparm -t /dev/sdb<br>&gt;&gt; =C2=A0Timing buffered disk reads: 132 M=
B in =C2=A03.03 seconds =3D 43.62 MB/sec<br>&gt;&gt; # dd if=3D/dev/sdb of=
=3D/dev/null bs=3D1M count=3D1000<br>&gt;&gt; 1048576000 bytes (1,0 GB, 100=
0 MiB) copied, 22,3564 s, 46,9 MB/s<br>&gt;&gt;<br>&gt;&gt; # rmmod uas usb=
_storage<br>&gt;&gt; # modprobe usb_storage quirks=3D090c:1000:<br>&gt;&gt;=
<br>&gt;&gt; # hdparm -t /dev/sdb<br>&gt;&gt; =C2=A0Timing buffered disk re=
ads: 452 MB in =C2=A03.01 seconds =3D 150.33 MB/sec<br>&gt;&gt; # dd if=3D/=
dev/sdb of=3D/dev/null bs=3D1M count=3D1000<br>&gt;&gt; 1048576000 bytes (1=
,0 GB, 1000 MiB) copied, 6,51492 s, 161 MB/s<br>&gt;&gt;<br>&gt;&gt;<br>&gt=
;&gt; [23612.690798] usb 2-3: Product: Intenso High Speed Line<br>&gt;&gt; =
[23612.690799] usb 2-3: Manufacturer: SMI<br>&gt;&gt; [23612.690801] usb 2-=
3: SerialNumber: 19112500000332<br>&gt;&gt; [23612.780771] usb-storage 2-3:=
1.0: USB Mass Storage device detected<br>&gt;&gt; [23612.780895] usb-storag=
e 2-3:1.0: Quirks match for vid 090c pid<br>&gt;&gt; 1000: 400<br>&gt;&gt; =
[23612.780940] scsi host2: usb-storage 2-3:1.0<br>&gt;&gt; [23612.781093] u=
sbcore: registered new interface driver usb-storage<br>&gt;&gt; [23612.7832=
26] usbcore: registered new interface driver uas<br>&gt;&gt;<br>&gt;&gt; # =
cat /proc/scsi/usb-storage/*<br>&gt;&gt; =C2=A0 =C2=A0Host scsi2: usb-stora=
ge<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0Vendor: SMI<br>&gt;&gt; =C2=A0 =
=C2=A0 =C2=A0 Product: Intenso High Speed Line<br>&gt;&gt; Serial Number: 1=
9112500000332<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0Protocol: Transparent SCSI<br=
>&gt;&gt; =C2=A0 =C2=A0 Transport: Bulk<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Quirks: MAX_SECTORS_64 SANE_SENSE<br>&gt;&gt;<br>&gt;&gt; # hdparm -t=
 /dev/sdb<br>&gt;&gt; =C2=A0Timing buffered disk reads: 220 MB in =C2=A03.0=
0 seconds =3D 73.22 MB/sec<br>&gt;&gt; # dd if=3D/dev/sdb of=3D/dev/null bs=
=3D1M count=3D1000<br>&gt;&gt; 1048576000 bytes (1,0 GB, 1000 MiB) copied, =
11,5469 s, 90,8 MB/s<br>&gt;&gt;<br>&gt;&gt; # rmmod uas usb_storage<br>&gt=
;&gt; # modprobe usb_storage quirks=3D090c:1000:<br>&gt;&gt; # hdparm -t /d=
ev/sdb<br>&gt;&gt; Timing buffered disk reads: 1016 MB in =C2=A03.00 second=
s =3D 338.51 MB/sec<br>&gt;&gt; # dd if=3D/dev/sdb of=3D/dev/null bs=3D1M c=
ount=3D1000<br>&gt;&gt; 1048576000 bytes (1,0 GB, 1000 MiB) copied, 3,31022=
 s, 317 MB/s<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; I&#39;m using both sticks =
as a bootable/emergency media (Debian stable,<br>&gt;&gt; kernel 4.19/no-qu=
irks with X, XFCE, web browser, etc) and haven&#39;t had<br>&gt;&gt; any is=
sues with timeouts, unresponsiveness or whatsoever.<br>&gt;&gt;<br>&gt;&gt;=
 When tested with recent kernels (e.g. Debian testing/5.5, Ubuntu 20.04<br>=
&gt;&gt; LTS/5.4) it&#39;s slow.<br>&gt;&gt;<br>&gt;&gt; Setting &quot;opti=
ons usb_storage quirks=3D090c:1000:&quot; in /etc/modprobe.d as<br>&gt;&gt;=
 a workaround for now.<br>&gt;&gt;<br>&gt;&gt;&gt;&gt; Signed-off-by: Jim L=
in &lt;<a href=3D"mailto:jilin@nvidia.com">jilin@nvidia.com</a>&gt;&gt;<br>=
&gt;&gt;&gt;&gt; ---<br>&gt;&gt;&gt;&gt; =C2=A0 drivers/usb/storage/unusual=
_devs.h | 6 ++++++<br>&gt;&gt;&gt;&gt; =C2=A0 1 file changed, 6 insertions(=
+)<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; diff --git a/drivers/usb/storage=
/unusual_devs.h<br>&gt;&gt;&gt;&gt; b/drivers/usb/storage/unusual_devs.h<br=
>&gt;&gt;&gt;&gt; index 1cd9b6305b06..1880f3e13f57 100644<br>&gt;&gt;&gt;&g=
t; --- a/drivers/usb/storage/unusual_devs.h<br>&gt;&gt;&gt;&gt; +++ b/drive=
rs/usb/storage/unusual_devs.h<br>&gt;&gt;&gt;&gt; @@ -1258,6 +1258,12 @@ UN=
USUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_RBC, USB_PR_BULK, NULL,<br>&g=
t;&gt;&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 ),<br>&gt=
;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; +UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x11=
00,<br>&gt;&gt;&gt;&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;S=
amsung&quot;,<br>&gt;&gt;&gt;&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;Flash Drive FIT&quot;,<br>&gt;&gt;&gt;&gt; + =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,<br>&gt;&gt;&gt;&g=
t; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_MAX_SECTORS_64),<br>&g=
t;&gt;&gt;&gt; +<br>&gt;&gt;&gt;&gt; =C2=A0 /* aeb */<br>&gt;&gt;&gt;&gt; =
=C2=A0 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,<br>&gt;&gt;&gt;&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Feiya&quot;,<br>&gt;&gt=
;&gt;&gt;<br>&gt;--nvpublic<br><br>I have found that the read rate of &quot=
;samsung Bar plus&quot; is slower than on windows 11 (210mb/s -&gt;&gt; 70m=
b/s) and recovered by disabling quirks (using /etc/modprobe.d)<br>This patc=
h affects not only &quot;Samsung Flash Driver FIT&quot;, but also other usb=
 flash storages. (They may use the same controller?)<br>But I can&#39;t rep=
roduce the timeout problem without quirks.<br>Could you provide information=
 to reproduce the timeout problem or logs?<br>It may help us find other sol=
utions to fix it.<br><br>Thanks,<br>SungHwan.<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAF52AWiuBQRG-onj7MDsH-wA=
kD40eS6j_CiPDAy4UFO2dyYUaQ%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CAF52AWiuBQRG-onj7MDsH-wAkD40eS6j_CiPDAy4UFO2dyYUaQ%40mail.gmail.c=
om</a>.<br />

--000000000000b389ac05e8515d39--
