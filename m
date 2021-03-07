Return-Path: <usb-storage+bncBDNM5HFD6YCBB6GWSGBAMGQELOSRLFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id A916F32FF34
	for <lists+usb-storage@lfdr.de>; Sun,  7 Mar 2021 06:58:18 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id x8sf4509151pfm.9
        for <lists+usb-storage@lfdr.de>; Sat, 06 Mar 2021 21:58:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615096697; cv=pass;
        d=google.com; s=arc-20160816;
        b=fxmnVu4u4Pva+lt8KPwbfvC1OKXKsDXJcFx07hbphzlXZnJmadIAanrAMckE4bU9R0
         +UG0qkayA0KcFhpdoQqO0vv8ADUBnhRd+R85+tczMJ8fW+WO1vTK98AJYa15QqbppJNe
         U6Lsuk6OnfCbClSrse9QEbaf9aPo4423qnUlb2unVIBwYAWTm8y+meUQ4DgrDzKnMfbS
         TD/iQy9VDnZ9vmeTfGRD3EXbzzCV99rBfv1W1mhbBP5Nyk+4Br6iVoJLt4fOtavZss/7
         9uwwYiz43XrRTuGkXOmDL4UDiOR6NQAPkBV537gtMSodQfuzig2pLKXOFpS0YOU5jocm
         UZWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=79VNMx5q5jUrtf8MgdsdBkdCUjMFSvM8+K/AiANrWHQ=;
        b=aoaorjwKHZPbVn4TXbS5b1zsbfgwba4TOXGhlS5P+og9Rb+Aj1LikzlPQzFOdTNTHS
         6QPBe9kTN4ue3tTRNpDRqzlBrgAckx5GNd8gjhrbfvRM8dJNifPEf8KdTqcTTKVm6e6/
         eE0ZSvM+YIs3dBH3uFZna5WkOXrMJzsYSv5VfFPwmNsf0dzLn7DBEqCgtfAXi+RbmiCj
         FVlqCxc9Hg8Uj6ahcA3RTXen3j8ffR9wgoyKpbj5zx/fw3Cur3EC2ldItcJKhnlUzfH/
         8OehM/uSz3gzT3BygErvIAbnBAOOL0F922cebsUH7dx8qiPYxWgF0TwXRR8nHT3R9VB5
         dlHg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=79VNMx5q5jUrtf8MgdsdBkdCUjMFSvM8+K/AiANrWHQ=;
        b=j01q3QztvtGWfBxPbI85uJyKhn6PPIKQbGTF02OIYqKzSb/MeieEtf4crzo1FOPofL
         gSKaoG17ORiRA1rt6AZVO9MVecPvCsB3GRvxgY9EEuPratTDVfM+cclTMn/sSye4/5ug
         vlQSGffLLISRanv/IGS//GRVD7xRCHe2OBpUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=79VNMx5q5jUrtf8MgdsdBkdCUjMFSvM8+K/AiANrWHQ=;
        b=KlK26m2RsnvS8ONS6+eGaV3Y9kmwvqKRF2bdsqgUd86L+7mu9Kp7jO/q/owIVgTw9U
         CuznVQ483UVh4U+jW6ifuehK0CdKGEv5FXjnMwviNzsDizT3evSGiZuIaOLwto341naA
         nFoK0BvwqYTNBpa7mvZgoHfX9pl02pDUxKsbA0xBKvQgb9Tnr4pHeqbO6QX0x2+DqMdH
         m34bPXzQg4gtCwkXqWTl7PpLwIsozQIdhL0vG/X74xwcmUaIHHztHQ0c9ZJyhyHoVkrj
         4oYlKJHc6G853JyDVYVXsM3ocqnHoh6PVmK66/Yo562/T8dwsHtItaoJM/2b1FupV7yS
         4NPA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531OYK/FGzdrokVz0Z2eXry23Yp+exWbrhm2uNF95PxBFlOooOZq
	c/NYtFlJvXLSGIwV2V/4jSSHWA==
X-Google-Smtp-Source: ABdhPJxvhNDkUEm2m7P1Pj+w5Mt8Fqp+iEyqphMXrbKn8K25rtpdSNwSwg/QvETmEnFJvijaQ1IP8w==
X-Received: by 2002:a63:c10:: with SMTP id b16mr16150573pgl.326.1615096696722;
        Sat, 06 Mar 2021 21:58:16 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1382:: with SMTP id i2ls7835755pja.1.canary-gmail;
 Sat, 06 Mar 2021 21:58:16 -0800 (PST)
X-Received: by 2002:a17:902:108:b029:e4:9e1b:b976 with SMTP id 8-20020a1709020108b02900e49e1bb976mr15602706plb.67.1615096695874;
        Sat, 06 Mar 2021 21:58:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615096695; cv=none;
        d=google.com; s=arc-20160816;
        b=PU5cmhRDk7a2fIV3F1j078hDNj062d+r5z9oIAXc/ZsfNOXw7FXpi9zVVwYqbJSw01
         19s1uAgxnbCpOSVhPxAyKwYYeCvOZRwF6g88OzR2d/UISAGKx00vvHN2XKdCsk8qsPKH
         fcaBYi4en7/AIRAwGpVNyqg8uNLDcCz3TnIjYPuTfTzeo8iFYLST3RhYnPWPZsBcX8b0
         a0iLQCu+dNb5eq5elSvW5OzRQH5tD0Cd5aZI2ExjiiKK9A8S3jghHldW8bKB7rMeLhMk
         oVbx0VIYsVL3oSDRRiNdSZlZ4+EVLtm2P1Zql1OdzexU6MfdAas9bRlYnDgdxvvBdzWv
         UWGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=wmEnRqgUOPASBVMlPTUnpWrmHQ42bzB4SNTfllMIQaI=;
        b=EzZFkc5AuFVdwiBCXM3DV0+jstXdzW5ljkAW80PTech3fk98MgW4EL6gV0WXeXiU7f
         AzSji6AXwBPt0NgFrRR956wWTnAGW7jJFSLQh4K8ulo/kc5TaBfVx81Vko9DwhVjBDkV
         LiSE7k/PfFiniWS4iJucBDsABKWlf/Y48OdVDvcCh8H3pki5Jgm5qU7h2SDSMEGKN0O2
         BYZzmme3A4zcadn0vxc9ik6KYmcop9FuztNuHXveuaL0pKAlxdi/062S2IjvFI77PjoR
         Voa5tRIxqeQSX386K86htrhiQjwn2dlS3OmqMYgbozPpHMzhHmCl9E0S+nKfgrddClO9
         b4Sg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (smtp.gentoo.org. [140.211.166.183])
        by mx.google.com with ESMTPS id 30si7965292pld.184.2021.03.06.21.58.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Mar 2021 21:58:15 -0800 (PST)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) client-ip=140.211.166.183;
From: Matthias Schwarzott <zzam@gentoo.org>
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 hirofumi@mail.parknet.co.jp
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
Message-ID: <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
Date: Sun, 7 Mar 2021 06:58:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210305191437.GC48113@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender)
 smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
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

Am 05.03.21 um 20:14 schrieb Alan Stern:
> On Fri, Mar 05, 2021 at 05:54:43PM +0100, Matthias Schwarzott wrote:
>> One major difference I noticed looking at service answer time statistics:
>> Windows sends a lot more requests of type "Test Unit Ready".
>> * Windows: 6385 calls
>> * linux: 71 calls
> 
> It's generally well known that Windows issues lots and lots of redundant
> commands to USB storage drives.
> 
> 
> Unless the Kindle advertises removable media, there doesn't seem to be
> any real point to all those TEST UNIT READY commands.  Unless they are
> what prevents the disconnections...
> 
This is kernel log from connecting:
[41709.248006] usb 3-4: new high-speed USB device number 6 using xhci_hcd
[41709.380015] usb 3-4: New USB device found, idVendor=1949, 
idProduct=0004, bcdDevice= 1.00
[41709.380019] usb 3-4: New USB device strings: Mfr=1, Product=2, 
SerialNumber=3
[41709.380021] usb 3-4: Product: Amazon Kindle
[41709.380022] usb 3-4: Manufacturer: Amazon
[41709.380023] usb 3-4: SerialNumber: REMOVED
[41709.493988] usb-storage 3-4:1.0: USB Mass Storage device detected
[41709.494080] scsi host6: usb-storage 3-4:1.0
[41710.510122] scsi 6:0:0:0: Direct-Access     Kindle   Internal Storage 
0100 PQ: 0 ANSI: 2
[41710.510245] sd 6:0:0:0: Attached scsi generic sg3 type 0
[41710.513059] sd 6:0:0:0: Power-on or device reset occurred
[41710.526331] sd 6:0:0:0: [sdc] Attached SCSI removable disk
[41712.629152] sd 6:0:0:0: [sdc] 6688768 512-byte logical blocks: (3.42 
GB/3.19 GiB)
[41712.846353] sd 6:0:0:0: [sdc] Write cache: enabled, read cache: 
enabled, doesn't support DPO or FUA
[41712.846357] sdc: detected capacity change from 0 to 6688768
[41712.849499]  sdc: sdc1

As it prints "Attached SCSI removable disk" the device advertises 
removable media.

>> How can I get further on this topic?
> 
> Is runtime power management enabled?  Maybe the Kindle disconnects
> whenever the computer tries to suspend it.  This typically happens 2
> seconds after the last command was issued, which matches your
> observations.  If runtime PM is enabled, you can try disabling it.
> 
I assume this means autosuspend is not used:

# cat /sys/block/sde/device/power/control
on

# lsusb:
[...]
Bus 003 Device 017: ID 1949:0004 Lab126, Inc. Amazon Kindle 3/4/Paperwhite
Device Descriptor:
   bLength                18
   bDescriptorType         1
   bcdUSB               2.00
   bDeviceClass            0
   bDeviceSubClass         0
   bDeviceProtocol         0
   bMaxPacketSize0        64
   idVendor           0x1949 Lab126, Inc.
   idProduct          0x0004 Amazon Kindle 3/4/Paperwhite
   bcdDevice            1.00
   iManufacturer           1 Amazon
   iProduct                2 Amazon Kindle
   iSerial                 3 REMOVED....
   bNumConfigurations      1
OTG Descriptor:
   bLength                 3
   bDescriptorType         9
   bmAttributes         0x03
     SRP (Session Request Protocol)
     HNP (Host Negotiation Protocol)
   Configuration Descriptor:
     bLength                 9
     bDescriptorType         2
     wTotalLength       0x0023
     bNumInterfaces          1
     bConfigurationValue     1
     iConfiguration          4 Self-powered
     bmAttributes         0xc0
       Self Powered
     MaxPower                2mA
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        0
       bAlternateSetting       0
       bNumEndpoints           2
       bInterfaceClass         8 Mass Storage
       bInterfaceSubClass      6 SCSI
       bInterfaceProtocol     80 Bulk-Only
       iInterface              5 Mass Storage
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            2
           Transfer Type            Bulk
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0200  1x 512 bytes
         bInterval               0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x01  EP 1 OUT
         bmAttributes            2
           Transfer Type            Bulk
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0200  1x 512 bytes
         bInterval               1
Device Qualifier (for other device speed):
   bLength                10
   bDescriptorType         6
   bcdUSB               2.00
   bDeviceClass            0
   bDeviceSubClass         0
   bDeviceProtocol         0
   bMaxPacketSize0        64
   bNumConfigurations      1
Device Status:     0x0001
   Self Powered

Regards
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3%40gentoo.org.
