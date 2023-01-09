Return-Path: <usb-storage+bncBDFKTTUNQMNRBKML6COQMGQENPEWJ4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FEF662541
	for <lists+usb-storage@lfdr.de>; Mon,  9 Jan 2023 13:16:42 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id y20-20020a056402271400b0046c9a6ec30fsf5127295edd.14
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 04:16:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673266602; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBUI20XrRECLegn1uV1TE/m46h4mech1hmM17S+fGboZ7kYlnC2CvqGVdHi7sTggqj
         7XLY3b+tA8TJlI2DWN2v70v2mVxyt0U1L9WgSQkY3BWk08fKIiX6I7LcjKr4+pm/rjpg
         ajkm7xGMhPtW+a/prQ2Km7Ln5iC5ESjALc11qrsq2JflkkWkzT2N6TFKvFCs6qky9gnK
         eev4Zaq0TbMlAwvqHpFP95DzUKF5nOrcaOK9jBvhQfAcg0M981k520T6CxXcp5DzT3sU
         hdRuEks6zQHxWmsxjKXREb6K6DGHPGF7UwHrXNIgKoYdZM5pIllXfvwyKNRbaHjrPcKb
         7YIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ms0BQMrA+ittkNbbsB/oQG8Avv5Ov44/F3cF317ZDUE=;
        b=U52iu/byjoTzwd6lNbHbPV2djdBnLyjIWnhc96Q7Z9Oz3lq879CU1g53GR0neK4t+5
         MUABj9JfzkDzAe7G4wr8lPbdBKGv11uzfOhHahH2cgc6ZSavIy45lNKIg5B5KNTjNfPv
         VvHvUydZEcckijgN+6Ma8CgZj9v3Nx5uRsgcMfHYZgOuJxGUIHzQWxBU94tCoqA9sE1t
         O6qB/mTz7Up9msYEDkMf9y27lN2iMGoOU3j2htzYRj6YfG8DvQdu41XK4ws5EzuQPMG+
         MTHpUQz4LBgU2r7uuy4KPY8vjC2oJTVpK/Oa1O6RRt+av2IdRZDGf7euOP8uZuWH9Qug
         l+uQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aB6Ly53h;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ms0BQMrA+ittkNbbsB/oQG8Avv5Ov44/F3cF317ZDUE=;
        b=RJy726mmvs3x/m7wfAqk36yUGCG+aLhUNpbSDHNrkxejhEpYvWjahxrydbB/CkVVNm
         5gJ1kdXtxAM+YFdCTfqTCpZVItYmOcXJxP/TUouM20P1z2Fh1tYEe3OnJtT8QDurAytb
         34gmb7ZqG+S8scsnUc1nZYhL3Jeem4RZ5J/fM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ms0BQMrA+ittkNbbsB/oQG8Avv5Ov44/F3cF317ZDUE=;
        b=SKOudM0iw6kUPoepl+UJWgCpfOKhHl3Q5q+OzRe/fjTzqz6php4wp6ZdsPky4EqJST
         kuuNy/sc6svZNzlbqh2+uXkXy7sQwaiLS+Qf2aFIHu0/m0Dt7DCQ9n929SyztUeLV2E8
         Ns7pQTKU6zkwrKw77o1Xn6ueSsIU5vOTSAQ6n3MJPrr1F9FqA9z0g9Km3J4xWHDmtfEH
         kzepKaJs05PPa/koevwE4QzvjXWU1GnQnHxPVxKbavlCmjl8OiPBo6xttTyPEVOonC2Q
         l1+THbLx+JjgEk7+FUiS8P06yedndyHYeFR+2sgu1DrkDUST9Ei/mE2uDSps25UGxeDF
         WAeA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2koyv+Aaw2twHwws+IuBwX1glJPc+jUvUKyL/6PHSkl7gXpE117w
	vAV55c3nlPe0sKSdKp3HesR8KQ==
X-Google-Smtp-Source: AMrXdXtw0OKqT9lXeC0+ujG/lVqwf5CDizKKGhjj76tmGrG/e6OJZ2CHHORgagkJkUTCtESFfiPywg==
X-Received: by 2002:a17:907:20af:b0:7b5:9670:ae0 with SMTP id pw15-20020a17090720af00b007b596700ae0mr4254207ejb.321.1673266602139;
        Mon, 09 Jan 2023 04:16:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:2c47:b0:7ae:83f4:3bed with SMTP id
 f7-20020a1709062c4700b007ae83f43bedls2774511ejh.2.-pod-prod-gmail; Mon, 09
 Jan 2023 04:16:41 -0800 (PST)
X-Received: by 2002:a17:906:22da:b0:84d:855:dcfe with SMTP id q26-20020a17090622da00b0084d0855dcfemr11537117eja.42.1673266600994;
        Mon, 09 Jan 2023 04:16:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673266600; cv=none;
        d=google.com; s=arc-20160816;
        b=Kz0FgO86C2BOzGS/d0+zsYEmy1tSEdPnU6A/H4rz+BGvhda1mLunG4bctq5ZBOnhnI
         ZmUxtSHLQf/+VncZRDBALlmGxCZRHSy6CU6Wcuu/wQ/jtgJxEusoGaxY1gXt7fF0/PDy
         Nm4Nr5sqAW3lQBMIWoWh2NI6LHLRp74NT/5CindGqu32qgKsqrJgZ+xZ5aBsH/PoIbcj
         hXeFfkOJ+Rwt0yZOZUU1m3Hfd3eYe11xKzomEHo59aTq0b0MUSCpr8B3C/uZ4/RCzrUw
         zXVtw1FEmWpr4fGzFkZRJWXPRpGx7eqVqcD3dvnv3y6q8oMdYPNjhs4yE/vPfkjGMX31
         +CJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bVDTHlYijFpTRIXjP7v3QEksgiva+IQkj5ycOT6O9No=;
        b=slA0HdEtR+HZe0gHwCamRNBJQqOVRnZBd3fTqYms0mGIsikJqmf9vUYr158g6QGsb0
         6zAwA6sUubma1iSaZo94fk1sPvWuvBR5malU4ythv7TP03zYhYBzPr65ZYnokU2mk998
         OACbQUjVa8UgDVLeK17wlki7RaLtGeRqtmm91PjNdGm9u0ItO48rpW4j4vf++wJEqV4J
         txLeuydyty8ukEKetGfu1DNF4DsusgCFdAkfE0ZWshgk4xojS0OKXqUP/d0nXeal60JK
         suFS5QFstHcp5twbvXt4ilOB8kCuUNJU1ttRwE/Ka1dheyUl83dsj0DoMhaIED1sY/Bs
         Sgug==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aB6Ly53h;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id vm11-20020a170907b68b00b0084c5e196029sor3339403ejc.17.2023.01.09.04.16.40
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 04:16:40 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:4703:b0:7c1:4665:ddb7 with SMTP id
 y3-20020a170906470300b007c14665ddb7mr6533988ejq.365.1673266600694; Mon, 09
 Jan 2023 04:16:40 -0800 (PST)
MIME-Version: 1.0
References: <20230109115550.71688-1-qkrwngud825@gmail.com> <a8c19717-dcd5-74b6-be4b-57616ea88ab0@suse.com>
In-Reply-To: <a8c19717-dcd5-74b6-be4b-57616ea88ab0@suse.com>
From: Juhyung Park <qkrwngud825@gmail.com>
Date: Mon, 9 Jan 2023 21:16:29 +0900
Message-ID: <CAD14+f3f56pCp-8OVq5nUX=RdTU8r93bn5NbQYL-HckgcxO+sg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
To: Oliver Neukum <oneukum@suse.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	gregkh@linuxfoundation.org, stern@rowland.harvard.edu, 
	zenghongling@kylinos.cn, zhongling0719@126.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=aB6Ly53h;       spf=pass
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

Hi Oliver,

On Mon, Jan 9, 2023 at 9:02 PM Oliver Neukum <oneukum@suse.com> wrote:
>
>
>
> On 09.01.23 12:55, Juhyung Park wrote:
> > This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.
> >
> > The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
> > blacklists UAS for the entire RTL9210 enclosures. Realtek's VendorId is 0x0bda
> > and RTL9210 enclosures reports 0x9210 for its ProductId.
> >
> > The RTL9210 controller was advertised with UAS since its release back in 2019
> > and was shipped with a lot of enclosure products with different firmware
> > combinations.
> >
> > If UAS blacklisting is really required said product (Hiksemi USB3-FW), it
> > should be done without blacklisting the entire RTL9210 products.
>
> Hi,
>
> I see this the issue. Do you have an idea how to limit the scope.

Unfortunately, no.

This might be the ugly case where, if a proper workaround could be
found (if the original report is valid at all), it may change the code
logic itself with some if branch rather than just unusual_uas.h.

With my RTL9210 enclosure, using multiple different firmware versions
still reports the same bcdDevice.

Note that, despite Hongling reporting that Windows doesn't use UAS in
https://lore.kernel.org/all/fbeffee7-3ac5-4798-14b0-724e0ed01947@126.com/
, Windows uses it on mine and respectively trim works.

>
> Hongling Zeng, do you have an idea, respectively if not, could
> you provide "lsusb -v" for the defective device?
>

Hongling didn't respond to Greg when he asked the same question back
in November: https://lore.kernel.org/all/Y29RtXGcey6V9iTY@kroah.com/

Anyways, here's my lsusb -v output. Hope it helps:
Bus 004 Device 002: ID 0bda:9210 Realtek Semiconductor Corp. RTL9210
M.2 NVME Adapter
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.20
  bDeviceClass            0
  bDeviceSubClass         0
  bDeviceProtocol         0
  bMaxPacketSize0         9
  idVendor           0x0bda Realtek Semiconductor Corp.
  idProduct          0x9210 RTL9210 M.2 NVME Adapter
  bcdDevice           20.01
  iManufacturer           1 Realtek
  iProduct                2 RTL9210
  iSerial                 3 012345678906
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0079
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              896mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           2
      bInterfaceClass         8 Mass Storage
      bInterfaceSubClass      6 SCSI
      bInterfaceProtocol     80 Bulk-Only
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       1
      bNumEndpoints           4
      bInterfaceClass         8 Mass Storage
      bInterfaceSubClass      6 SCSI
      bInterfaceProtocol     98
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Data-in pipe (0x03)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x02  EP 2 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Data-out pipe (0x04)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst              15
        MaxStreams             32
        Status pipe (0x02)
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x04  EP 4 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               0
        bMaxBurst               0
        Command pipe (0x01)
Binary Object Store Descriptor:
  bLength                 5
  bDescriptorType        15
  wTotalLength       0x003e
  bNumDeviceCaps          4
  USB 2.0 Extension Device Capability:
    bLength                 7
    bDescriptorType        16
    bDevCapabilityType      2
    bmAttributes   0x00000006
      BESL Link Power Management (LPM) Supported
  SuperSpeed USB Device Capability:
    bLength                10
    bDescriptorType        16
    bDevCapabilityType      3
    bmAttributes         0x00
    wSpeedsSupported   0x000e
      Device can operate at Full Speed (12Mbps)
      Device can operate at High Speed (480Mbps)
      Device can operate at SuperSpeed (5Gbps)
    bFunctionalitySupport   1
      Lowest fully-functional device speed is Full Speed (12Mbps)
    bU1DevExitLat          10 micro seconds
    bU2DevExitLat        2047 micro seconds
  SuperSpeedPlus USB Device Capability:
    bLength                20
    bDescriptorType        16
    bDevCapabilityType     10
    bmAttributes         0x00000001
      Sublink Speed Attribute count 1
      Sublink Speed ID count 0
    wFunctionalitySupport   0x1100
    bmSublinkSpeedAttr[0]   0x000a4030
      Speed Attribute ID: 0 10Gb/s Symmetric RX SuperSpeedPlus
    bmSublinkSpeedAttr[1]   0x000a40b0
      Speed Attribute ID: 0 10Gb/s Symmetric TX SuperSpeedPlus
  Container ID Device Capability:
    bLength                20
    bDescriptorType        16
    bDevCapabilityType      4
    bReserved               0
    ContainerID             {03020100-0504-0706-0002-020200020202}
Device Status:     0x0000
  (Bus Powered)


>         Regards
>                 Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAD14%2Bf3f56pCp-8OVq5nUX%3DRdTU8r93bn5NbQYL-HckgcxO%2Bsg%40mail.gmail.com.
