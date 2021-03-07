Return-Path: <usb-storage+bncBDNM5HFD6YCBBSEJSSBAMGQEUVGKBFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B08330312
	for <lists+usb-storage@lfdr.de>; Sun,  7 Mar 2021 17:52:26 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id x8sf5043665pfm.9
        for <lists+usb-storage@lfdr.de>; Sun, 07 Mar 2021 08:52:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615135945; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAZsfMTX/U3Z7fg+JpsLjZDPfAXPlhbCx81Y/SVdKw7z67ccx8ymXJnCrUccX058mR
         PPP7uurGTFzB/6avFrkdF3NC5zkUpGRs4rAm4qiT8Zc8K5eooM/jN9yU7rmrSQ2EYzKj
         d14U0SlbUUQ41LnPQyIs6PI0H86/TiEeeH3X19A9XEtjT2Evx7bvGBlv2iGS2xiUK5Ua
         dSHeDyicr25wBOP0uMge60VzHZ9iM9P0aSEhPVjF/8v63B2z3e8cxkpkw21qMVpp3ZrH
         hUIRvivplnfYp7Ko4m84l9Kb/YBQACola2UsLks6qfy0PG9m8dbdaMqjlPhQswlpj6GP
         lkYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=KxZGMga2/kTd9JcDDoUGVPy2tRKtkYhorbyURRGZb2E=;
        b=zpOC/yLub+C/14ZS3JO96gn9Hnl+b8BTASj8wZaWjOPaIeklz7jSeSZXGauO6plQjF
         Hjnx+HUqBGmgbCR0NdMjRs0hPXQ+ltlfcAn1lflYD0jNT7ru4OepClgW07TgpJmHDLWt
         jVbgeGHwDdo/rP34zDMPuFF7vmr+8tVQb9OxOEsxB5nDXeTW6Axb5npK65LXHyBiIEjN
         lP/F6Y0Ya427sHsomqGkRrQJINMpN+IAh2adjV0ino2hNOy9QbhMMq9QF16+PMCM9/X7
         YUJ5tWF2G09A+ebrQoGtoCSIJ8wlqWeuQHgG66NbZUDYpQBPb/U7pvTcOaoYtIVwIJWI
         5Nkw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KxZGMga2/kTd9JcDDoUGVPy2tRKtkYhorbyURRGZb2E=;
        b=Xf0ElH1Mdo7EFbPtwjdpTMRBO8amMFi1G6r2Y6MbikjgtvRyRstvFzikBwXinKVF+d
         okdq14d48B6IysyUU9Bg7EnCZ4+6yOTKgMjE1TS6hxsg9ulhahFx7i7judb40ANpiYN6
         IH3bl2Fkz7yA3hkwJ70kc+qS9dM6X2laT6v58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KxZGMga2/kTd9JcDDoUGVPy2tRKtkYhorbyURRGZb2E=;
        b=Z4Dm6dhvurufVSnZqgjbHZ02otplq/qc4njG0paaUkh7Ju27jsC3fcHcnDjuwkG8yd
         g12BcL9419g5KadyZClHnjOvocsGEqs0XvZb4SxAnxRF/9hwlOR/gvOKPUhxGpe24Kd9
         Sz7vJYsh3HcEmXaxWgKJhGO5fEzLuUsboYYURnhYK/qgoFAx1vyquZo4LN2u32dfXqy8
         fsmuUjSYFehq4ZZ3M1bQy4NvQZNTy1Dt4pGamLmyd+FQy2APU0kf+zaN3a1EWDWDMtga
         TxI7jqRtWkf0jQa517BBrm0vl8ZSJogzRF+nqkTv/pCakDx7PddYexv8sAgkWmBG7J6l
         rkSA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5323IpptmdbzOyg/pmvVaN1Uj5ykzG/iLrmglC/qLmhw9g/WoYc5
	EJTIBSaoVIYYZfsecMpLHlo9UA==
X-Google-Smtp-Source: ABdhPJxKoVIX5HJqg5xBeMaBOVoiMJSCMTB9EmjciPtbmx1wfIr8aP4FxrXkjKfoETyQCNAa/vUufQ==
X-Received: by 2002:a17:90a:f403:: with SMTP id ch3mr18978304pjb.126.1615135944881;
        Sun, 07 Mar 2021 08:52:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:6102:: with SMTP id v2ls5911969pfb.1.gmail; Sun, 07 Mar
 2021 08:52:24 -0800 (PST)
X-Received: by 2002:a62:b515:0:b029:1d6:aba1:e22 with SMTP id y21-20020a62b5150000b02901d6aba10e22mr17902523pfe.47.1615135944221;
        Sun, 07 Mar 2021 08:52:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615135944; cv=none;
        d=google.com; s=arc-20160816;
        b=sHxrJOMy9Mw9TtmwiBsxiNc2R9Cq3zh2lYiTaN3/7ltxpFy/RrOLW7/yO82mxmTKK3
         BlKVtZOaDH82JWJZ1XhjK7W2xX0+VVcKcSSvN47BkDBoIo7ccOhfqyFQ63MtZQ3tfLUx
         sCsbdaK087TYa0/ZXNp9AoA2S8+wCiCIJo1hoqQHRjMX+JUW0JOQzb0LYaCVmBMocYZD
         +4aaO4s4Gf2sjOCxirnL9JBfIckIO/Lv0bLdcG7EvmwOYOVEJ5p07k8qzTw6IpZJNyQs
         YmrPI007QR5oSiIgOY/SmXcVBC+chkxZs8O0wASvHX4QtfVGqbBjeohf5JPyVazlQPK7
         bszA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=h6D/6/uWL5U+BtYVJHYP+/hcz7cjwM9ZhPZnYUFe/Ts=;
        b=iEmHLArUx2b0ZPXFseZ8qqH/MYehAz3Rms7mohCd29ZFE+k4Cb5lwp5R0YExcejg5z
         hqn3IEuzVVt+OqkYhS0ZvsYGan+sSfFC7AHSX+i5V0P6CJox++Ni0W1MCyWXgF3Bskc4
         J+HQ6Btw4ujF5cZBnIZdzU8rgOo54C8NsGII3yzFG6AshtI80KjH9zX3Byp4EhZiKYie
         JvmXrFv1Jks1sb0M6WyykmvqqiLpbGhHAPT18m8ZAXG+YH0sekdzMjx8rVQj5iQhaGEu
         yqOA/K8OMIqmG73gXH21fboJOQIkRbHXWBH0IG/JUX0Ky+Qy0Zq+0RXEkTrWjsF2J+u1
         Fe/A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (mail.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by mx.google.com with ESMTPS id cu7si5623086pjb.148.2021.03.07.08.52.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Mar 2021 08:52:24 -0800 (PST)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
From: Matthias Schwarzott <zzam@gentoo.org>
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 hirofumi@mail.parknet.co.jp
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
Message-ID: <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
Date: Sun, 7 Mar 2021 17:52:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210307155236.GB103559@rowland.harvard.edu>
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

Am 07.03.21 um 16:52 schrieb Alan Stern:
> On Sun, Mar 07, 2021 at 06:58:10AM +0100, Matthias Schwarzott wrote:
>> Am 05.03.21 um 20:14 schrieb Alan Stern:
>>> Is runtime power management enabled?  Maybe the Kindle disconnects
>>> whenever the computer tries to suspend it.  This typically happens 2
>>> seconds after the last command was issued, which matches your
>>> observations.  If runtime PM is enabled, you can try disabling it.
>>>
>> I assume this means autosuspend is not used:
>>
>> # cat /sys/block/sde/device/power/control
>> on
> 
> This means autosuspend isn't used for the sde drive.  But the log
> extract above shows that the Kindle is sdc, not sde.
> 
Yes, confusing. From different boots with another usb disc not detected.

This time Kindle is sde again:

# dmesg |tail
[83709.973141] usb-storage 3-4:1.0: USB Mass Storage device detected
[83709.973226] scsi host8: usb-storage 3-4:1.0
[83711.028665] scsi 8:0:0:0: Direct-Access     Kindle   Internal Storage 
0100 PQ: 0 ANSI: 2
[83711.028792] sd 8:0:0:0: Attached scsi generic sg5 type 0
[83711.031536] sd 8:0:0:0: Power-on or device reset occurred
[83711.046604] sd 8:0:0:0: [sde] Attached SCSI removable disk
[83713.145467] sd 8:0:0:0: [sde] 6688768 512-byte logical blocks: (3.42 
GB/3.19 GiB)
[83713.364900] sd 8:0:0:0: [sde] Write cache: enabled, read cache: 
enabled, doesn't support DPO or FUA
[83713.364906] sde: detected capacity change from 0 to 6688768
[83713.368036]  sde: sde1
# cat /sys/block/sde/device/power/control
on

power/control reports the same value for all sd? devices on this system.

Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9c3121a9-3d0c-60b3-ef17-993b7d2e9149%40gentoo.org.
