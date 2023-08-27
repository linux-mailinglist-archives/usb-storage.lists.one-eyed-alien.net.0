Return-Path: <usb-storage+bncBDTNDO5RRYJRBF6LV2TQMGQELAT37GI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1145.google.com (mail-yw1-x1145.google.com [IPv6:2607:f8b0:4864:20::1145])
	by mail.lfdr.de (Postfix) with ESMTPS id 1547778A131
	for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 21:35:53 +0200 (CEST)
Received: by mail-yw1-x1145.google.com with SMTP id 00721157ae682-58fc448ee4fsf36416317b3.2
        for <lists+usb-storage@lfdr.de>; Sun, 27 Aug 2023 12:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1693164952; cv=pass;
        d=google.com; s=arc-20160816;
        b=rvgYQLKKEIpsvDo7N6ylbVTuzmFNit1R1f+ns91DxfzdoLx1cLnOI1q6Ie9wLDCIw0
         l09Lk+FHbADsLOaFody9xFeKegiCLtPDgNtbd0ry6NNEYkYId95KWbnpZKLPC0sL89+Z
         +buMpeBrFhiIQNts+vGGhzFl6ja5eMs0zQEoVte2PaYUenPMDRpUe3aEuHfu/9aguYAH
         3moaH2Pc/hgCQqL8k+jyMPcFSh15kik3asBWUenYn3BM7mBGMVawbS9pr9O8QwP5hTx9
         N+opEW2jFoc1d3v/RpNrFObj3JmzREwcItI2TfccCN9U5XbUwJSQZzfz1pJSzJTzkdCo
         ROLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=i+K2RpV/2S4xwkLwBdVIz569N596AHtPq3+btCxkBjk=;
        fh=8Xm/zxdCY/7hq82nMcjDc7wEj+EXxAh4i4uLHmrinNI=;
        b=KfXj47eVa02PT2DeCqtrz5CXJFFc1V4l8wNnu/a2j5sTHuKgopQCPrluM9AzQZRTta
         syqCQ0djqG15uxTO+/DbJHZRRtsm7INsdvcmNcUsqRYvf0dju1BHAIYFRW03fs0aITv6
         PLCrDU18GDyMiViqVeIi3XQfjnJT+NGjUV4qAXFPkB7+nkoqBSL7FTeY5lBLEXvtg8wf
         Tu6/NYoVm9GNkNieJ36PwJp3/o3l4bBGGd0fgd3XHlBrRuehG7R8yW+8cABiTMbGr6Hh
         DuuVonOW0t9HPypdO+jqqiWf+vNQrCZFXZQYyB0icHs8c1zrS9PBHpDMVt6jUJVqw32L
         KvYQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=OSi2ueNe;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1693164952; x=1693769752;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=i+K2RpV/2S4xwkLwBdVIz569N596AHtPq3+btCxkBjk=;
        b=FeLno2fUyzVLU+HvyfApcWRn+DW9/B4eFltFRugKCKmybZ+/ukY4rm0GOj7EgaUFvZ
         CK4ZYyfq4d63PSaj2Trojd6WNUxnhXDtmqgeZMU52sZkboXsPPuQVpDahRu577BAXVXe
         Zbe+vWaWU2aDDyTUlQVGbJ17jSyfArdkCFuiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693164952; x=1693769752;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+K2RpV/2S4xwkLwBdVIz569N596AHtPq3+btCxkBjk=;
        b=QeRt+p7hISvoZb+TdVMqMTj6GM4vM/z59IxPrFAfoRHgcWXPAuHoFNpVgU0Gy0d1cL
         b/+diVMGIZ1AAuqHyUwvlfrJd+MxHZkwFwiGBTm2uJV474/07sar4SGk/a9VLE+msYPv
         p7Uksi/2Ez/XjjJH3T6ETsAFsebSCGghD19fwqdx5ajZzE5kAYBr8f4Mb7rbWA0H5XCG
         28dViT86pd3+dq4KuO324ZtLL5lyJJJVwNpWlIRPvVbrnYQdLUHvbfXtVYXTNAMAfc96
         xbt/Q6yPJEkzBve526r177ns0Kh1fJ5F6A3xdPZqkioOecYWzgvnkGe/Pr2vRbbFz8by
         Yu2A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwLhVgjou0eG1b19DGDUQUbHdAp9Y7nsjcduhL2HCbORec9Isil
	gacdYvHxYlhtzk/NhMAQBkdAsQ==
X-Google-Smtp-Source: AGHT+IF1+gEEBa41gwEc0FHcUhcOvC8xt6IoyqSHu10H8Qln/IltVGOUYJL9ZviZII7xCGfq4RT50Q==
X-Received: by 2002:a81:a08b:0:b0:589:f439:4cd1 with SMTP id x133-20020a81a08b000000b00589f4394cd1mr24267733ywg.33.1693164951687;
        Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:dd86:0:b0:635:c4b2:5800 with SMTP id v6-20020a0cdd86000000b00635c4b25800ls2952902qvk.0.-pod-prod-02-us;
 Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
X-Received: by 2002:a05:620a:9049:b0:76f:e3c:56ab with SMTP id rl9-20020a05620a904900b0076f0e3c56abmr83347qkn.15.1693164951369;
        Sun, 27 Aug 2023 12:35:51 -0700 (PDT)
Received: by 2002:a05:620a:470b:b0:762:30a9:f2a9 with SMTP id af79cd13be357-76f036b336dms85a;
        Sun, 27 Aug 2023 09:45:59 -0700 (PDT)
X-Received: by 2002:a17:907:160c:b0:978:2b56:d76e with SMTP id hb12-20020a170907160c00b009782b56d76emr25069515ejc.12.1693154757982;
        Sun, 27 Aug 2023 09:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1693154757; cv=none;
        d=google.com; s=arc-20160816;
        b=OSwgMltYPas78MCrDqwYlUb+Axr44kkTpaCA2aQMrCvghtL9RA5xGZiy4/tau9OGDJ
         LRN5MaSv1W0K3o+AqreP2XIlt5TEx23C4/Kd8GX2VBCbPnGnVvxYsAu6TU9SnenSMjMd
         gSu6cQ8Kb5LF7QtVTVEowqdpcGEeNSwIJPCqKZNR3G2w7MPxOrI7lyWvUr8JBNCvcQrR
         AnJAj5Dodhspcr9V7zR58XcmGkeJrA0mxOZHHJmho5y1n5G0YyASBc6ySLkGRLmob/rZ
         bRGD3HYyJO8wvUCb2S+OvjXMa1SMULI8XDbCv2gWoHEJVgN7Qx04cOZzd0jOU3II5GF2
         /CoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=uiO2Fn8gY3Kwe/9TGq4oT/QQCNm5lMOfz3tU3wQO21A=;
        fh=d+iAgN6vmtssyzVwTBqhKJm+GuxAgdHFAHKZ99WiIwY=;
        b=jjVgKhhxUKfPCAKfy2BBpOOgQLhWULqGHOM9Dh03tF+M516P8ThpTOdgr7hbwjMEkz
         UJPToAh9QM1Y8YhlnDeqlM02cUo6PVBUZZzWM6tEe07Pq9MABzP20hvroCGRcls87SCA
         2B4y1t4lcHOdnTGcHwM6cmqdVQry//hMckIAscM/PO5p22Q69t/AaiZhD0qpNHz+Y6Y4
         hF/vmstYiklZmUHt/YMhJOP1JXKnpWLcjiPrpDtI6znSaE5R2H6JN3HkJG1BFnmYjLDf
         +RvFCkiDdr140tExUBxzA8Z1D3CodDK2lPjVelIOc9qa0K/iUYOiDdDY7grJngNgs7HL
         Xx3A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=OSi2ueNe;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id mm6-20020a170906cc4600b009a1bcf8d9c5sor384683ejb.6.2023.08.27.09.45.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 27 Aug 2023 09:45:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:7ea8:b0:9a5:83f0:9bc5 with SMTP id qb40-20020a1709077ea800b009a583f09bc5mr6015704ejc.18.1693154757303;
        Sun, 27 Aug 2023 09:45:57 -0700 (PDT)
Received: from [192.168.2.30] (85-70-151-113.rcd.o2.cz. [85.70.151.113])
        by smtp.gmail.com with ESMTPSA id u20-20020a170906951400b00993470682e5sm3601527ejx.32.2023.08.27.09.45.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Aug 2023 09:45:56 -0700 (PDT)
Message-ID: <34aa2eea-5417-4e46-91a0-aac1a46a84cf@gmail.com>
Date: Sun, 27 Aug 2023 18:45:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: usb-storage: how to extend quirks flags to 64bit?
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com>
 <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
Content-Language: en-US
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <6f8b825b-bc41-4080-8128-4a6f0a43f779@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20221208 header.b=OSi2ueNe;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
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

On 8/27/23 17:50, Alan Stern wrote:
> On Sun, Aug 27, 2023 at 11:32:05AM +0200, Milan Broz wrote:
>> Hello,
>>
>> I tried to extend USB storage for the passthrough of Opal
>> security commands,
> 
> What sort of changes are needed?  Where is this passthrough mechanism
> documented?

We are currently adding support for optional OPAL hw encryption to
cryptsetup/LUKS2 (that uses kernel OPAL ioctl interface) and I tried
to make USB adapters to work with it too.

I'll send RFC patchset (it is quite simple) where I explain it in detail.
The patch for USB storage is actually one liner, the rest is in SCSI driver :)

Basically, USB adapters (not supporting UAS) cannot work as
required SCSI SECURITY IN/OUT SCSI commands do not work here.

But we can use ATA12 pass-thru (as used with original sedutils
and some other tools we used in research; it is a documented feature).
It works once ATA12 wrapper is added to block layer and USB storage enables
the "security_supported" bit.

> 
>>   and some adapters are clearly "not perfect".
> 
> Which ones?

Namely Realtek 9210 family (NVME to USB bridge). Everything OPAL related
works, but the adapter always set write-protected bit for the whole
drive (even if OPAL locking range is just covering part of the disk).

I spent quite a lot time trying new firmware versions - this issue is
still there.

On the other side, many other USB to SATA bridges works nicely.
I think this is the exact situation where we should set a new quirks flag
to disable it. (The nasty thing is that for unbricking it you need PSID reset
- PSID is a number written on the label of the drive - followed by physical
disconnect for recovery.)


Anyway, I intentionally sent this 32bit flags question separately as it
is actually a generic issue - we are just out of flag space now...

Even if the patches mentioned above are rejected, someone will need
a new flag for something else later.

>> I would need to introduce a new quirks flag to turn it off.
>>
>> Seems that we are already out of quirks flags on 32bit
>> for usb storage - in usb_usual.h the last entry in mainline is
>>    US_FLAG(SENSE_AFTER_SYNC, 0x80000000)
>>
>> Adding a new flag will work for 64-bit systems but not
>> for platforms with 32-bit unsigned long like i686.
>>
>> How do we allow new flag definitions?
>>
>> Struct us_data fflags can be made 64bit (defined in
>> drivers/usb/storage/usb.h), but the major problem is that these
>> are transferred through the generic driver_info field
>> defined in linux/mod_devicetable.h as unsigned long).
>> Making this 64bit is IMO an extensive API change (if even possible).
>> I guess this is not the way to go.
>>
>> Could USB maintainers please help to advise what is the correct
>> solution? I am not familiar with the USB driver model here
>> and I see no easy way how it can be solved by a trivial static
>> allocation inside the USB storage driver.
>>
>> Someone will need a new quirks flag in the future anyway... :)
> 
> I can think of only one way to accomplish this on 32-bit systems: Change
> the driver_info field from a bit array to an index into a static table
> of 64-bit flags values.  Each unusual_devs structure would have its own
> entry in this table.  As far as I can tell, the other unusual_*.h tables
> could retain their current driver_info interpretations, since no new
> quirk bits are likely to be relevant to them.
> 
> Making this change would be an awkward nuisance, but it should be
> doable.

Hm, yes, thanks for the idea,that is a possible solution.
It will need to modify all unusual macros, though. Just I am not sure I want
to spent time patching all the drivers as I have not way how to test it.

Thanks,
Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/34aa2eea-5417-4e46-91a0-aac1a46a84cf%40gmail.com.
