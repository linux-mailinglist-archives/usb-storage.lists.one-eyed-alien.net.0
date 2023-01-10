Return-Path: <usb-storage+bncBDFKTTUNQMNRBL7T6OOQMGQE2IRBAMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF416638A8
	for <lists+usb-storage@lfdr.de>; Tue, 10 Jan 2023 06:37:52 +0100 (CET)
Received: by mail-ej1-x647.google.com with SMTP id wz4-20020a170906fe4400b0084c7e7eb6d0sf6920824ejb.19
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 21:37:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673329072; cv=pass;
        d=google.com; s=arc-20160816;
        b=n43SSy0lHNpVs1GSG07vG7+1GIRWGU9JAqbEKsoKnmjtXvy9EBUVX0BFOCenJULFB/
         oeS/Xqz8cjEYI0tGv81fT8ApY695QOwn0Dlv30hXT44VKzivJlPtgY63e1d7NCMfmPr2
         zkpwvI2u7RaiOiTEvZW08BtiMEJVDShl8itv2yQNyXWMUkqFPz9ZJuupNU3hPxdPQX7i
         cmFmn0dybdqPzkhDOdEQi1Xpk0o5yXOry4q6YgaMXPRHEQJITYpI+rCWd3DDIIz3O4Xz
         crPrbF3XUl0yuf4x9u5KpK8Uypan4tJNpsoXzH2whL3o30mg0kT/tPy3KiXMywgjjXTM
         +fJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=dulEfZvGyK1A2D1MfWmo4TQGO6mygAVcnzVT4ubWh+M=;
        b=Z3jdv+FkXa1N/rSexGE+wml+X5TU1Y0h1vo7Dm5SePgJMrgZEvvhnD12m/nPHzehcB
         COpv4D3L+E/G4oQzzzBzhpUUR62sVsISIf+WnJEZjp48axA1SrnNihwHIsf3aKOBtx3W
         +NHEUxwIeUuAhZzuBG40I8B+4p6c32h0UFMy6L8o4HbCmNXPnEsMd1KVBOSa8pzGQAgT
         nUPru4kLWWjOn2WnFbRradxcCyxdaAO6U2B36DehVvYSXMDpZx4Ghn8/q8Qr25BikYCk
         rG04QmF5+KRywkQsbUoihdBqUXvobBaOrff/Kxs85cFg3sq//1Y4OoCUquz2NTa6vvp9
         CcmA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ekzMztY3;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dulEfZvGyK1A2D1MfWmo4TQGO6mygAVcnzVT4ubWh+M=;
        b=JLfN64rtSfS3fz68QQyAd7fMu/dXYkVJoKu3swLX+PD00YVMy36mZMQ8sUD4ZwkE4m
         O9KKJkHF0Mqnx5U4j16EZyhiPHIMCdgXJntz0EzNVP2nLgr3Tgm6MTyfZVz9d4ELD1kZ
         ZhyFfGrgfWhKL7OO2xrRU8rm5Jw+Vn4iHWETk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dulEfZvGyK1A2D1MfWmo4TQGO6mygAVcnzVT4ubWh+M=;
        b=GKxY4WEHVBprwWWvgpOYT6oFdfn73aPCwkkDmlShyD/3QpNOzi2pDy8cEjjlPqgEyr
         s2OyeH0fdzCUDRyI+Wd/SzphJshnruaAuAEyCBbAXDbP2dMeibaiezCfuVrMi3H7yEYu
         R8dVv+5d17PzBOi+txO86YYB5zsmQWLFm37fqme3tK4P17+YCqOiNDpEEjoIQaGf9q5F
         nPPMyD4uUFbmS4IMSGYj4bPM/ElUKDMgi01fKw2o/DKy8PjMDUv8mUeGynCA5fMrwjDq
         feIHKGfZ2m81V7nfEK1uhTfZ93zV8OqysTVsgtL+NQALk/8/GjvoSbSU2+q8k0GJbLbm
         +BqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2koe7y/HIHQaL7RqK+STru+zHXnAC7ZZArrj1Cd4X1CequOrteWt
	uQErG8U6Y4XlHrmxGZ5wdQYs7Q==
X-Google-Smtp-Source: AMrXdXukMLJ4KCkJNhbchQvrjkfegD3B4JfLSZYhZhsjNV+eN7MWGf1zLCQ0x5EZafOxohWvExEDzg==
X-Received: by 2002:a05:6402:371a:b0:499:c424:e893 with SMTP id ek26-20020a056402371a00b00499c424e893mr138369edb.156.1673329071979;
        Mon, 09 Jan 2023 21:37:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:2594:b0:7a7:f2a:d325 with SMTP id
 m20-20020a170906259400b007a70f2ad325ls4188750ejb.10.-pod-prod-gmail; Mon, 09
 Jan 2023 21:37:50 -0800 (PST)
X-Received: by 2002:a17:907:8748:b0:7c1:ad6:7331 with SMTP id qo8-20020a170907874800b007c10ad67331mr64694420ejc.27.1673329070711;
        Mon, 09 Jan 2023 21:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673329070; cv=none;
        d=google.com; s=arc-20160816;
        b=b7RQ5ZUKWZ3qAT+I1OEhgtze1WIU7FqP7RlwybePAAaAVKe4CEPzT3R2O4LgEC1LLN
         9bpR9pm0c21zN9cvPzSBCuKvBIo9A/RCUBxyVa4/3IhIzQBYwzf6qzMIRHRJ8rc64Ht9
         QdPtW8+6lqWkQRwg92wMGSVta/+u9WFU460IzE/EkDtIgXl1F3jWhflhFmPErp2ANBq5
         1R+8b1odqxNyJDEkpysZh2RSXk4cOMrtmvy/ODu/x/ah+m2AIKIm4apvInYed1Gntq9T
         i43KiejzEWRGwdohIsK19p2aOeftEbtI2Ps2kSIjLFhoK3lIDwKNHk4PqSTqrhrbttG0
         aiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Xcf/uNbT0vjVmDut9Ze6WXU1l5fnC1iWK9SFyHyYT0w=;
        b=bxzKYjbmJscY4uE1FI3IRCuekPdRYBVH84vb7mi/PvczVzvSXVxa/fyhY47CH1WrqY
         SLm6zmI6k1LlL0D4ytNn9KJyUG9xORpQPjQBNHDpxBUc/im0qtH711RHp0Pw7wA0JZze
         vQwuh2nTOfd3Dl/jQOInysb+A8bMl8oG0yryQQ4mxS7/Xq6kq3Om1H3BWZMEIEm7Jqfz
         LNMSer4aX9M7q3LVszubFUcpBZrzDMuahK/uO2RzS9GurXsCPQPohz1O5EliTJEkxsqL
         IxAgRnHfzJI3s8gBJzSgKIwIvwDtqcfLLf2m98oJdxQ7oQ7dvbmdrdJzPm7Cd9fuWKeB
         srWQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ekzMztY3;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z19-20020a170906715300b0084d44e1ac42sor2486192ejj.55.2023.01.09.21.37.50
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 21:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:4703:b0:7c1:4665:ddb7 with SMTP id
 y3-20020a170906470300b007c14665ddb7mr6902685ejq.365.1673329070207; Mon, 09
 Jan 2023 21:37:50 -0800 (PST)
MIME-Version: 1.0
References: <2mw02fh6hzd-2mw3w8xfngq@nsmail7.0.0--kylin--1> <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com>
In-Reply-To: <CAD14+f1p3j3WJUYshneH7A38b8JsiXjtScESB2uOQ-ZyBi57tg@mail.gmail.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Tue, 10 Jan 2023 14:37:38 +0900
Message-ID: <CAD14+f1ebzviMF-pi0ryKU8cRPWp2BqV2dwiXOFjeM30eqrwOg@mail.gmail.com>
Subject: [usb-storage] Re: Re: [PATCH] Revert "usb-storage: Add Hiksemi
 USB3-FW to IGNORE_UAS"
To: =?UTF-8?B?5pu+57qi546y?= <zenghongling@kylinos.cn>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	oneukum <oneukum@suse.com>, gregkh <gregkh@linuxfoundation.org>, 
	stern <stern@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ekzMztY3;       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

And please leave all the mail addresses, especially the mailing list
addresses intact.

It makes it really hard to track this down later in the public domain.

On Tue, Jan 10, 2023 at 2:34 PM Juhyung Park <qkrwngud825@gmail.com> wrote:
>
> Thanks for the log, we're getting somewhere.
>
> Thankfully, it seems to report "HIKSEMI" as the manufacturer and "MD202" =
as the product name.
>
> Please post `sudo lsusb -v` for the product as well, and please determine=
 whether UAS works on Windows by checking TRIM functionality.
> I assume you're using an SSD with that enclosure.
> Check this for how: https://www.anandtech.com/show/13953/plugable-usbcnvm=
e-toolless-nvme-ssd-enclosure-capsule-review
>
> > the firmware of rtl9210 is contantly updating and fixing problem
>
> IMHO, this is just them maintaining the product well. USB to SATA/NVMe en=
closures are notorious for having firmware problems unfixed for the entire =
lifespan of the device.
>
> > but continuous high speed read/write can cause kernel panic
>
> This leads me to believe that the device itself having problems with some=
 power management (weak regulator, etc).
>
> I have multiple RTL9210 drives, some connected to a server running 24/7 a=
nd not one has ever given me a problem, unlike some ASMedia or JMicron prod=
ucts I've tried.
>
> On Tue, Jan 10, 2023 at 2:26 PM =E6=9B=BE=E7=BA=A2=E7=8E=B2 <zenghongling=
@kylinos.cn> wrote:
>>
>> Hi:
>>
>>    The screenshot information and error log.
>>
>>    I don't think this version of firmware is stable,normal loading of ua=
s driver is fine,but continuous high speed read/write
>>
>> can cause kernel panic,I have researched a lot about rtl9210, this is no=
 relevant better support for uas driver, the firmware
>>
>> of rtl9210 is contantly updating and fixing problem,self-updating firmwa=
re is not an effective management method,I suggest you fixed
>>
>> with regenerate PID/VID like other product.
>>
>>
>>
>>
>>
>> [   39.510571] usb 2-2: new SuperSpeed USB device number 2 using xhci_hc=
d
>> [   39.546117] usb 2-2: New USB device found, idVendor=3D0bda, idProduct=
=3D9210
>> [   39.553989] usb 2-2: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D3
>> [   39.562354] usb 2-2: Product: MD202
>> [   39.566641] usb 2-2: Manufacturer: HIKSEMI
>> [   39.571606] usb 2-2: SerialNumber: 012345680663
>> [   39.609717] calling  usb_storage_driver_init+0x0/0x1000 [usb_storage]=
 @ 2635
>> [   39.618026] usbcore: registered new interface driver usb-storage
>> [   39.625132] initcall usb_storage_driver_init+0x0/0x1000 [usb_storage]=
 returned 0 after 6981 usecs
>> [   39.636463] calling  uas_driver_init+0x0/0x1000 [uas] @ 2635
>> [   39.674761] scsi host8: uas
>> [   39.678333] usbcore: registered new interface driver uas
>> [   39.681043] scsi 8:0:0:0: Direct-Access     HIKSEMI  MD202           =
 1.00 PQ: 0 ANSI: 6
>> [   39.686646] sd 8:0:0:0: Attached scsi generic sg1 type 0
>> [   39.689021] sd 8:0:0:0: [sda] 250069680 512-byte logical blocks: (128=
 GB/119 GiB)
>> [   39.698524] sd 8:0:0:0: [sda] Write Protect is off
>> [   39.698526] sd 8:0:0:0: [sda] Mode Sense: 37 00 00 08
>> [   39.701341] sd 8:0:0:0: [sda] Write cache: enabled, read cache: enabl=
ed, doesn't support DPO or FUA
>> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 0000000=
0 1b000000 05038000
>> [   39.720357]  sda: sda1
>> [   39.737829] sd 8:0:0:0: [sda] Attached SCSI disk
>> [   39.760140] initcall uas_driver_init+0x0/0x1000 [uas] returned 0 afte=
r 114228 usecs
>> [   39.923773] EXT4-fs (sda1): mounted filesystem with ordered data mode=
. Opts: (null)
>> [  587.113528] sd 8:0:0:0: [sda] tag#27 uas_eh_abort_handler 0 uas-tag 2=
8 inflight: CMD OUT
>> [  587.123050] sd 8:0:0:0: [sda] tag#27 CDB: Write(10) 2a 00 03 6f b0 00=
 00 04 00 00
>> [  587.131819] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [  587.142599] xhci_hcd 0000:0c:00.3: @000000026c61f1a0 00000000 0000000=
0 1b000000 05048000
>> [  587.152037] sd 8:0:0:0: [sda] tag#26 uas_eh_abort_handler 0 uas-tag 2=
7 inflight: CMD OUT
>> [  587.161557] sd 8:0:0:0: [sda] tag#26 CDB: Write(10) 2a 00 03 6f ac 00=
 00 04 00 00
>> [  587.170317] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [  587.181095] xhci_hcd 0000:0c:00.3: @000000026c61f1c0 00000000 0000000=
0 1b000000 05048000
>> [  587.190530] sd 8:0:0:0: [sda] tag#25 uas_eh_abort_handler 0 uas-tag 2=
6 inflight: CMD OUT
>> [  587.200046] sd 8:0:0:0: [sda] tag#25 CDB: Write(10) 2a 00 03 6f a8 00=
 00 04 00 00
>> [  587.208804] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [  587.219574] xhci_hcd 0000:0c:00.3: @000000026c61f1e0 00000000 0000000=
0 1b000000 05048000
>> [  587.229006] sd 8:0:0:0: [sda] tag#24 uas_eh_abort_handler 0 uas-tag 2=
5 inflight: CMD OUT
>> [  587.238523] sd 8:0:0:0: [sda] tag#24 CDB: Write(10) 2a 00 03 6f a4 00=
 00 04 00 00
>> [  587.247270] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [  587.258047] xhci_hcd 0000:0c:00.3: @000000026c61f200 00000000 0000000=
0 1b000000 05048000
>> [  587.267471] sd 8:0:0:0: [sda] tag#23 uas_eh_abort_handler 0 uas-tag 2=
4 inflight: CMD OUT
>> [  587.276988] sd 8:0:0:0: [sda] tag#23 CDB: Write(10) 2a 00 03 6f a0 00=
 00 04 00 00
>> [  587.285745] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled =
endpoint or incorrect stream ring
>> [  587.296522] xhci_hcd 0000:0c:00.3: @000000026c61f220 00000000 0000000=
0 1b000000 05048000
>> [  587.305955] sd 8:0:0:0: [sda] tag#22 uas_eh_abort_handler 0 uas-tag 2=
3 inflight: CMD OUT
>> [  587.315473] sd 8:0:0:0: [sda] tag#22 CDB: Write(10) 2a 00 03 6f 9c 00=
 00 04 00 00
>> ...........................
>>
>>   592.553969] sd 8:0:0:0: [sda] tag#1 uas_eh_abort_handler 0 uas-tag 2 i=
nflight: CMD
>> [  592.553971] sd 8:0:0:0: [sda] tag#1 CDB: Write(10) 2a 00 03 6f 48 00 =
00 04 00 00
>> [  592.553983] scsi host8: uas_eh_bus_reset_handler start
>> [  592.553987] usb 2-2: cmd cmplt err -2
>> [  592.852532] xhci_hcd 0000:0c:00.3: HC died; cleaning up
>> [  592.858832] usb 1-1: USB disconnect, device number 2
>> [  592.864765] usb 1-1.3: USB disconnect, device number 4
>> [  592.870979] usb 2-2: USB disconnect, device number 0
>> [  592.973600] usb 1-3: USB disconnect, device number 3
>> [  593.021342] usb 1-4: USB disconnect, device number 5
>> [  593.073210] usb 2-2: device not accepting address 2, error -22
>> [  720.510582] INFO: task kworker/1:2:154 blocked for more than 120 seco=
nds.
>> [  720.518551]       Tainted: G         C  E   4.4.131-20210120.kylin.x8=
6-generic #kylin-KylinOS
>> [  720.528466] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disabl=
es this message.
>> [  720.537601] kworker/1:2     D ffff88026c143c38     0   154      2 0x0=
0000000
>> [  720.545894] Workqueue: usb_hub_wq hub_event
>> [  720.550971]  ffff88026c143c38 0000000000016300 ffff8802755bb900 ffff8=
8026cb80000
>> [  720.559673]  ffff88026c144000 ffff88026ca88100 0000000000000000 ffff8=
8026cb80000
>> [  720.568374]  ffff88026cb80000 ffff88026c143c50 ffffffff8186ae25 ffff8=
8026ca880f8
>> [  720.577076] Call Trace:
>> [  720.580201]  [<ffffffff8186ae25>] schedule+0x35/0x80
>> [  720.586137]  [<ffffffff8186b0ce>] schedule_preempt_disabled+0xe/0x10
>> [  720.593623]  [<ffffffff8186cb94>] __mutex_lock_slowpath+0x164/0x1e0
>> [  720.601012]  [<ffffffff8186cc3f>] mutex_lock+0x2f/0x40
>> [  720.607141]  [<ffffffff8162b8e9>] usb_disconnect+0x59/0x290
>> [  720.613757]  [<ffffffff8162bb68>] hub_quiesce+0x48/0xa0
>> [  720.619983]  [<ffffffff8162e06e>] hub_event+0x16e/0xb10
>> [  720.626209]  [<ffffffff810af0f9>] ? ttwu_do_wakeup+0x19/0xf0
>> [  720.632921]  [<ffffffff810af26d>] ? ttwu_do_activate.constprop.91+0x5=
d/0x70
>> [  720.641086]  [<ffffffff810afd19>] ? try_to_wake_up+0x49/0x400
>> [  720.647896]  [<ffffffff810f2445>] ? lock_timer_base+0x55/0x70
>> [  720.654704]  [<ffffffff8109d70b>] process_one_work+0x16b/0x4b0
>> [  720.661609]  [<ffffffff8109da9b>] worker_thread+0x4b/0x4d0
>> [  720.668124]  [<ffffffff8109da50>] ? process_one_work+0x4b0/0x4b0
>> [  720.675224]  [<ffffffff810a3ee7>] kthread+0xe7/0x100
>> [  720.681162]  [<ffffffff810a3e00>] ? kthread_create_on_node+0x1e0/0x1e=
0
>> [  720.688845]  [<ffffffff818700b5>] ret_from_fork+0x55/0x80
>> [  720.695263]  [<ffffffff810a3e00>] ? kthread_create_on_node+0x1e0/0x1e=
0
>> [  720.702947] INFO: task kworker/u32:6:254 blocked for more than 120 se=
conds.
>> [  720.711112]       Tainted: G         C  E   4.4.131-20210120.kylin.x8=
6-generic #kylin-KylinOS
>> [  720.721021] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disabl=
es this message.
>> [  720.730153] kworker/u32:6   D ffff88026bb475e8     0   254      2 0x0=
0000000
>> [  720.738438] Workqueue: writeback wb_workfn (flush-8:0)
>> [  720.744593]  ffff88026bb475e8 0000000000000200 ffff88026ab81c80 ffff8=
80275318000
>> [  720.753297]  ffff88026bb48000 ffff88027ec56300 7fffffffffffffff ffff8=
801c0b48060
>> [  720.762001]  ffff8801c0b48000 ffff88026bb47600 ffffffff8186ae25 00000=
00000000000
>> [  720.770705] Call Trace:
>> [  720.773823]  [<ffffffff8186ae25>] schedule+0x35/0x80
>> [  720.779762]  [<ffffffff8186e446>] schedule_timeout+0x1b6/0x270
>> [  720.786670]  [<ffffffff810fc2ee>] ? ktime_get+0x3e/0xb0
>> [  720.792897]  [<ffffffff8186a594>] io_schedule_timeout+0xa4/0x110
>> [  720.799995]  [<ffffffff813c4971>] get_request+0x411/0x7a0
>>
>>   TKS!
>>
>>
>> ----
>>
>>
>>
>>
>>
>>
>> =E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH] Revert "usb-storage: Add=
 Hiksemi USB3-FW to IGNORE_UAS"
>> =E6=97=A5=E3=80=80=E6=9C=9F=EF=BC=9A2023-01-09 20:16
>> =E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9Aqkrwngud825
>> =E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9Aoneukum;
>>
>> Hi Oliver,
>>
>> On Mon, Jan 9, 2023 at 9:02 PM Oliver Neukum wrote:
>> >
>> >
>> >
>> > On 09.01.23 12:55, Juhyung Park wrote:
>> > > This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.
>> > >
>> > > The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE=
_UAS")
>> > > blacklists UAS for the entire RTL9210 enclosures. Realtek's VendorId=
 is 0x0bda
>> > > and RTL9210 enclosures reports 0x9210 for its ProductId.
>> > >
>> > > The RTL9210 controller was advertised with UAS since its release bac=
k in 2019
>> > > and was shipped with a lot of enclosure products with different firm=
ware
>> > > combinations.
>> > >
>> > > If UAS blacklisting is really required said product (Hiksemi USB3-FW=
), it
>> > > should be done without blacklisting the entire RTL9210 products.
>> >
>> > Hi,
>> >
>> > I see this the issue. Do you have an idea how to limit the scope.
>>
>> Unfortunately, no.
>>
>> This might be the ugly case where, if a proper workaround could be
>> found (if the original report is valid at all), it may change the code
>> logic itself with some if branch rather than just unusual_uas.h.
>>
>> With my RTL9210 enclosure, using multiple different firmware versions
>> still reports the same bcdDevice.
>>
>> Note that, despite Hongling reporting that Windows doesn't use UAS in
>> https://lore.kernel.org/all/fbeffee7-3ac5-4798-14b0-724e0ed01947@126.com=
/
>> , Windows uses it on mine and respectively trim works.
>>
>> >
>> > Hongling Zeng, do you have an idea, respectively if not, could
>> > you provide "lsusb -v" for the defective device?
>> >
>>
>> Hongling didn't respond to Greg when he asked the same question back
>> in November: https://lore.kernel.org/all/Y29RtXGcey6V9iTY@kroah.com/
>>
>> Anyways, here's my lsusb -v output. Hope it helps:
>> Bus 004 Device 002: ID 0bda:9210 Realtek Semiconductor Corp. RTL9210
>> M.2 NVME Adapter
>> Device Descriptor:
>> bLength 18
>> bDescriptorType 1
>> bcdUSB 3.20
>> bDeviceClass 0
>> bDeviceSubClass 0
>> bDeviceProtocol 0
>> bMaxPacketSize0 9
>> idVendor 0x0bda Realtek Semiconductor Corp.
>> idProduct 0x9210 RTL9210 M.2 NVME Adapter
>> bcdDevice 20.01
>> iManufacturer 1 Realtek
>> iProduct 2 RTL9210
>> iSerial 3 012345678906
>> bNumConfigurations 1
>> Configuration Descriptor:
>> bLength 9
>> bDescriptorType 2
>> wTotalLength 0x0079
>> bNumInterfaces 1
>> bConfigurationValue 1
>> iConfiguration 0
>> bmAttributes 0x80
>> (Bus Powered)
>> MaxPower 896mA
>> Interface Descriptor:
>> bLength 9
>> bDescriptorType 4
>> bInterfaceNumber 0
>> bAlternateSetting 0
>> bNumEndpoints 2
>> bInterfaceClass 8 Mass Storage
>> bInterfaceSubClass 6 SCSI
>> bInterfaceProtocol 80 Bulk-Only
>> iInterface 0
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x81 EP 1 IN
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 15
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x02 EP 2 OUT
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 15
>> Interface Descriptor:
>> bLength 9
>> bDescriptorType 4
>> bInterfaceNumber 0
>> bAlternateSetting 1
>> bNumEndpoints 4
>> bInterfaceClass 8 Mass Storage
>> bInterfaceSubClass 6 SCSI
>> bInterfaceProtocol 98
>> iInterface 0
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x81 EP 1 IN
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 15
>> MaxStreams 32
>> Data-in pipe (0x03)
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x02 EP 2 OUT
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 15
>> MaxStreams 32
>> Data-out pipe (0x04)
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x83 EP 3 IN
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 15
>> MaxStreams 32
>> Status pipe (0x02)
>> Endpoint Descriptor:
>> bLength 7
>> bDescriptorType 5
>> bEndpointAddress 0x04 EP 4 OUT
>> bmAttributes 2
>> Transfer Type Bulk
>> Synch Type None
>> Usage Type Data
>> wMaxPacketSize 0x0400 1x 1024 bytes
>> bInterval 0
>> bMaxBurst 0
>> Command pipe (0x01)
>> Binary Object Store Descriptor:
>> bLength 5
>> bDescriptorType 15
>> wTotalLength 0x003e
>> bNumDeviceCaps 4
>> USB 2.0 Extension Device Capability:
>> bLength 7
>> bDescriptorType 16
>> bDevCapabilityType 2
>> bmAttributes 0x00000006
>> BESL Link Power Management (LPM) Supported
>> SuperSpeed USB Device Capability:
>> bLength 10
>> bDescriptorType 16
>> bDevCapabilityType 3
>> bmAttributes 0x00
>> wSpeedsSupported 0x000e
>> Device can operate at Full Speed (12Mbps)
>> Device can operate at High Speed (480Mbps)
>> Device can operate at SuperSpeed (5Gbps)
>> bFunctionalitySupport 1
>> Lowest fully-functional device speed is Full Speed (12Mbps)
>> bU1DevExitLat 10 micro seconds
>> bU2DevExitLat 2047 micro seconds
>> SuperSpeedPlus USB Device Capability:
>> bLength 20
>> bDescriptorType 16
>> bDevCapabilityType 10
>> bmAttributes 0x00000001
>> Sublink Speed Attribute count 1
>> Sublink Speed ID count 0
>> wFunctionalitySupport 0x1100
>> bmSublinkSpeedAttr[0] 0x000a4030
>> Speed Attribute ID: 0 10Gb/s Symmetric RX SuperSpeedPlus
>> bmSublinkSpeedAttr[1] 0x000a40b0
>> Speed Attribute ID: 0 10Gb/s Symmetric TX SuperSpeedPlus
>> Container ID Device Capability:
>> bLength 20
>> bDescriptorType 16
>> bDevCapabilityType 4
>> bReserved 0
>> ContainerID {03020100-0504-0706-0002-020200020202}
>> Device Status: 0x0000
>> (Bus Powered)
>>
>>
>> > Regards
>> > Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf1ebzviMF-pi0ryKU8cRPWp2BqV2=
dwiXOFjeM30eqrwOg%40mail.gmail.com.
