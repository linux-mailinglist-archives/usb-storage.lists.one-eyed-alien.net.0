Return-Path: <usb-storage+bncBAABBHHURGBAMGQETADMA3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EAD32F2B7
	for <lists+usb-storage@lfdr.de>; Fri,  5 Mar 2021 19:36:14 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 7sf1709273oix.6
        for <lists+usb-storage@lfdr.de>; Fri, 05 Mar 2021 10:36:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614969373; cv=pass;
        d=google.com; s=arc-20160816;
        b=izlQjg8c+3bUu/ccaPvj9gzhttpDrV0lxyqsjLdNoifU/YJpjnoLSwgy1rN6u7OFsP
         W9IPjCLhH66Tp6VX7YPOwTceQhaJ1AD4X8EmIJjSAyXYC9zKe4aYJ/RjcP4Eyw00H6Dx
         A0qzH7BIgbF/6tZrhWJ3MELGxA9nUF7bz/gvDxyDjlz385ex9Wx15CO/B3mubB6/7eYZ
         J6gdRtojv4qezoelAgqUK42lr2kZZdNJ05TV1EWgHkAg1c4wUphqLX5uNErGarJMJyiJ
         spC8UucDInrrLnkCHlUkIkOhP4YUFpWnqfEWj6P8QfElhaOM7YMyzd3H155UKZBYr1Xv
         Sbig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:cc:subject:from:to:sender:dkim-signature;
        bh=jRag/0FzCHKKAz1MYfYNwNZE8LhAzapKGNrkuMZpvtE=;
        b=xPAqWC16zSRAL3jKTCfEvJeGz65W9cNcFV6ivnCvqEfDiWFDgo+lJsDhVo8IfU09A/
         rhKqRAW/i26M/NIyMbrEW0fnxv0K5ORLMvVP8pPHnyyUJdEZJB+cf/sJrz9wI9plDRr3
         GdcKfZxRhZlEKlTILRwrLlWIKGpuV2TC9D+5X5aPbCRFh65XaF7YRYcyUM7KCRBS2dLX
         4myneHxy0/Xjwo7VaFFYqBTIslZpM83Au5A5RFq3d2vGmvG9vLyxRvVO7nRhEylENUsq
         U3U0TdSXPsLlbGUfUfUdC7cvv54x9rzx3PRObRhmiQf5k5zzY+0Cpg96dVN/aFatI0G3
         n4vg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jRag/0FzCHKKAz1MYfYNwNZE8LhAzapKGNrkuMZpvtE=;
        b=dmWKDwJN/kGlIM5xM7RezaHpZoJTxHzyTLJKC7tsv8M4T+O/06f+ec8vKuctaiZpV0
         qeXohkrwXlKwFtRr64gyQNewY9sBKJI6GzDMU2kEebZL2lyCtD8UuJRk0pppOec5vQB7
         ITsAHoUoB/WxXOyXkChc2nHH++cBuw9U1Vdtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:cc:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jRag/0FzCHKKAz1MYfYNwNZE8LhAzapKGNrkuMZpvtE=;
        b=brlD/XOk1SGuGQK8Nud+L5MZclSXh+FeXh4rOV9cI4nQtJ+1AhL/le8PJFmCbcvyNU
         6NQ12l4nxPbhPXRVWXOncBBOp5KmYpZ60NsGutK07gYPm5++/aZmt6qJKAs8iOnlDlIT
         /NNflRkYPDg55vVelcZvGDg9KN19NNbnQqJFiaMKlbmSooJCCYyAacnyqXaC19j4we0D
         z6/XKs6BvatSciR131+RX8HzwfEhFOmaxCobYUpJGx3AaipfARTSRNWOoRBE/8bbP+2c
         yUWHa4Nm6Gq6ikb6ygFV+cWPAq/Fl16m8QWdj1tK/t8BrkEMvzJoD9gSota8mP1PnlFV
         fjtA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5321Gb6UWKzQcAQaKy5iMBOHTHAVPW67aT/Q7InD96by9/0LOWl8
	i7dvALzHq7rlXj9xttlRIfbPRA==
X-Google-Smtp-Source: ABdhPJzcc8PXkcKpB/nrwo5Ln90v2jAYUJp71mmTewtVcNjE2riMxNjbZMkMP7mk7uzzx+23SF2dSg==
X-Received: by 2002:a05:6808:7cd:: with SMTP id f13mr8319537oij.136.1614969373071;
        Fri, 05 Mar 2021 10:36:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:f11:: with SMTP id m17ls2706342oiw.0.gmail; Fri, 05
 Mar 2021 10:36:12 -0800 (PST)
X-Received: by 2002:aca:bc46:: with SMTP id m67mr8003001oif.116.1614969372759;
        Fri, 05 Mar 2021 10:36:12 -0800 (PST)
Received: by 2002:aca:d756:0:b029:fd:8a86:8f0e with SMTP id o83-20020acad7560000b02900fd8a868f0emsoig;
        Fri, 5 Mar 2021 08:54:49 -0800 (PST)
X-Received: by 2002:a62:3812:0:b029:1ed:9958:b0c4 with SMTP id f18-20020a6238120000b02901ed9958b0c4mr9838533pfa.15.1614963289028;
        Fri, 05 Mar 2021 08:54:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614963289; cv=none;
        d=google.com; s=arc-20160816;
        b=tm4Uw7ZsG2TB5mSPmGIzj9sStoxQBKSFYp7F96UKzlmjrMZfdjhbKebuZZpiEouE8K
         DAAgCscOhTpmV/poeJzQCUHoqAHkkplLKYjyIGQN+wpVtYU4E7iADeG9jIeb2uSlj7Yc
         xv6Gxa6k0h38Rgbh9Cwun52F2jCzJypgiPCrrqVQigNkk5bN/i3Atc+1QdCe/y9lKmyd
         eHpel71j1nKT39n8rlO3a2qZ9vXVRRZsHnI/aj0IS1esZy2DoFr/mU8AgE4Qkm7M7j5M
         O/9MHlvI1Vap9VrWqYO5cEu0bvClIHZ1D0CKXK57qRUA1Jtll1YUipoQbOo7CQFsrn3h
         iiEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:subject:from:to;
        bh=vGxBb43YH6MLYybKTPXGY9v8LlsC1fCz4u2VH/va59E=;
        b=kkCFjBetu2L0QVTeILmgQHZLjpyTg41AcZEN9A2mwLnUuGXo0x0jaSeHNp0jI9c1l6
         GiD8Q08+EEymmhNo3sAE64ey8r/BZTXjUkjT7ht7A8Ki5u3jIYAxM050PoJDpHfCFXV8
         2mHFQLvMSdVlM9OoQ4xHlmjyRrbt8NJCnPfSQlgC0lx0DjzgTzb9scuWhB2HMB3erR6/
         A6y9Be59HuIo5DzPjOFspwVQgodK/t7qqNRyr1EVR4BaO+d/WjcmezZywyb8gipveMEK
         yFcJpJy8aYvAVLO+8fCL+EvNydMoYmIuurZkqiONl0ZFadDHfH1d/Z6B1TnumMF2O20e
         j+MQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (dev.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by mx.google.com with ESMTPS id j37si3307168pgl.145.2021.03.05.08.54.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Mar 2021 08:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
To: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
From: Matthias Schwarzott <zzam@gentoo.org>
Subject: [usb-storage] Amazon Kindle disconnect after Synchronize Cache
Cc: hirofumi@mail.parknet.co.jp
Message-ID: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
Date: Fri, 5 Mar 2021 17:54:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as
 permitted sender) smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=gentoo.org
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

Hi folks,

I have an issue with my Amazon Kindle. Since some time the device 
disconnects 2 seconds after a sync command sent via USB.

See also this matching bug report:
https://bugzilla.kernel.org/show_bug.cgi?id=203973

My current workaround is this udev-rule:
	SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk", 
ENV{ID_VENDOR}=="Kindle", RUN+="/bin/bash -c 'echo write\ through > 
/sys/block/%k/queue/write_cache'"

But I like to find a proper solution.

I did various recordings of usb-traffic with wireshark on linux and windows.

On windows, the device does not disconnect after the "Synchronize Cache" 
command.

One major difference I noticed looking at service answer time statistics:
Windows sends a lot more requests of type "Test Unit Ready".
* Windows: 6385 calls
* linux: 71 calls

After most of the "Synchronize Cache" commands on windows there was 
directly a following "WRITE" command. It seems WRITE commands avoid the 
disconnect.

But sending a plain "Synchronize Cache" under windows (8.1 and 10) does 
not trigger the disconnect.

Windows:
1583	14.891478	host	1.6.1	USBMS	58	SCSI: Synchronize Cache(10) LUN: 0x00 
(LBA: 0x00000000, Len: 0)
1584	14.891595	1.6.1	host	USB	27	URB_BULK out
1585	14.891613	host	1.6.1	USB	27	URB_BULK in
1586	14.896866	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Synchronize 
Cache(10)) (Good)
1589	15.687209	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1590	15.687353	1.6.1	host	USB	27	URB_BULK out
1591	15.687358	host	1.6.1	USB	27	URB_BULK in
1592	15.687405	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1713	16.699689	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1714	16.699820	1.6.1	host	USB	27	URB_BULK out
1715	16.699825	host	1.6.1	USB	27	URB_BULK in
1716	16.699915	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1717	17.709334	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1718	17.709547	1.6.1	host	USB	27	URB_BULK out
1719	17.709552	host	1.6.1	USB	27	URB_BULK in
1720	17.709586	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1721	18.712864	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1722	18.713081	1.6.1	host	USB	27	URB_BULK out
1723	18.713086	host	1.6.1	USB	27	URB_BULK in
1724	18.713148	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1741	19.735245	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1742	19.735410	1.6.1	host	USB	27	URB_BULK out
1743	19.735415	host	1.6.1	USB	27	URB_BULK in
1744	19.735474	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1811	20.747477	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1812	20.747699	1.6.1	host	USB	27	URB_BULK out
1813	20.747704	host	1.6.1	USB	27	URB_BULK in
1814	20.747766	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1905	21.755419	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1906	21.755579	1.6.1	host	USB	27	URB_BULK out
1907	21.755584	host	1.6.1	USB	27	URB_BULK in
1908	21.755674	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)
1911	22.769205	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
1912	22.769355	1.6.1	host	USB	27	URB_BULK out
1913	22.769360	host	1.6.1	USB	27	URB_BULK in
1914	22.769415	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit 
Ready) (Good)

How can I get further on this topic?

Thanks
Matthias

linux:
===========================================================================
SCSI Service Antwortzeit - kindle-linux-copy.pcap:
Index  Procedure  Calls  Min SRT (s)  Max SRT (s)  Avg SRT (s)  Sum SRT (s)
---------------------------------------------------------------------------
SBC (disk)
Inquiry         18      1     0.000742     0.000742     0.000742 0.000742
Mode Sense(6)         26      6     0.104194     0.110284     0.108607 
0.651640
Prevent/Allow Medium Removal         30     10     0.000115     0.015012 
     0.002431     0.024309
Read Capacity(10)         37      3     0.000631     0.001004 0.000835 
   0.002506
Read(10)         40   2200     0.000136     0.020928     0.002452 5.393555
Request Sense          3     27     0.000295     0.003102     0.001022 
0.027604
Synchronize Cache(10)         53      6     0.000223     2.703190 
0.654663     3.927976
Test Unit Ready          0     71     0.000081     0.007955     0.000816 
     0.057908
Write(10)         42    195     0.001204     0.236517     0.022452 4.378117
SBC (disk)
---------------------------------------------------------------------------

windows:
===========================================================================
SCSI Service Antwortzeit - Kindle-sideload-win81.pcapng:
Index  Procedure  Calls  Min SRT (s)  Max SRT (s)  Avg SRT (s)  Sum SRT (s)
---------------------------------------------------------------------------
SBC (disk)
Inquiry         18      6     0.001026     0.109327     0.055329 0.331972
Mode Select(6)         21      2     0.001499     0.002851     0.002175 
   0.004350
Mode Sense(6)         26      8     0.102380     0.116633     0.108400 
0.867199
Prevent/Allow Medium Removal         30      9     0.000274     0.644009 
     0.072284     0.650556
Read Capacity(10)         37     51     0.000144     0.109027 0.009779 
   0.498711
Read(10)         40   1269     0.000537     0.107562     0.003026 3.840104
Request Sense          3     19     0.000461     0.001388     0.000889 
0.016893
Start Stop Unit         27      1     0.001695     0.001695     0.001695 
     0.001695
Synchronize Cache(10)         53      7     0.000511     0.001765 
0.001052     0.007362
Test Unit Ready          0   6385     0.000090     0.083883     0.000605 
     3.859785
Unknown-0x%02x         35      3     0.108739     0.111119     0.109720 
   0.329159
Write(10)         42    303     0.001117     0.257120     0.030089 9.117113
SBC (disk)
---------------------------------------------------------------------------

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9f57532f-1fb7-0fdd-b91c-2dfecef5aff3%40gentoo.org.
