Return-Path: <usb-storage+bncBDTNDO5RRYJRB3HUS6VAMGQEEYQJ3FQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AA7E0E41
	for <lists+usb-storage@lfdr.de>; Sat,  4 Nov 2023 09:01:49 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-4083fec2c30sf18679805e9.1
        for <lists+usb-storage@lfdr.de>; Sat, 04 Nov 2023 01:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699084909; cv=pass;
        d=google.com; s=arc-20160816;
        b=QrNx+j5U8Yh4BEJVCX+AwvG6eVfIXiwGNRo0NFRh4b7uz//5j+Kc0C1HHL7RzHBIEj
         UJ3K6udBAomcHDruf7Hnmrn+i4NyiCSWh8bqUQgk0OIibSc9lv512AiyiN7QLIg1A8rV
         MPECczipu2c3439Lo3uFyEQfVCRWjJBNj8d3nbR6udYjh0A4lPqWGe0dUQ+LOZTOgacv
         PkqaS2WuKyS7dI3KIL4dk/n9N2H8LCJ/+7LamldBOosXIlMBNn7PqoXVP2JtXX6YYfxr
         V7vaWgA1SxrskhpNzaFpiQPQBr1RVUDn5sQjcAeA6EgO3vwehiZR+k8f3k+oWUt+wPlV
         SCBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=8d0ITdN4yRqOS2kPpYXbjzYP4EytZr1G2uHo8LppfcA=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=AnP3KkQ7sfYGuHDKVN4FvT1mG6n+SuWoUPGiz2VOqU1Qcn12MmgWb4x8+fGKanYzfH
         RCZXWSeqI083L6f8rtvEhnW5lNu+u7OOZ5dcT11rs/SUJGRnIQfazJIgcuAe/9YHLDmD
         ioi38f9haUEzBlU3j6jia0YXLmKeGwFXP5yGeQL6bSm9elgQ9DAYZZpBaejyUaPH9UTJ
         8KATkKGlGGidjO1pqkbttvFhqZllBBqoyBvtXcPWtAnU3WrSNBGmDmN80/JS2u7BiSr/
         JK2kcn1eul7Q1iaMQl1GhQaTb4b2GfOrNRHZmsRRtS8/1lqzFYzm2jxgst3An6QDH4A+
         Jb4Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=GD7lTzC0;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1699084909; x=1699689709; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=8d0ITdN4yRqOS2kPpYXbjzYP4EytZr1G2uHo8LppfcA=;
        b=YDfVZ5XHwpWC5SaScW/q3iL70uSJPJ/Pdc4yFk3/1hAa4VH4JZscTt9z3wqIVvCwpJ
         1uBezJiYWXDtij5Nr32YzXy+X7+QQ4ELY2bVSGe8g1MgywIk7wq0stsLCAJ2QJ4paBsS
         KQbqQ+/yvUTBw6o0z9Trv0mUSCh/6qa7sBI4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699084909; x=1699689709;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8d0ITdN4yRqOS2kPpYXbjzYP4EytZr1G2uHo8LppfcA=;
        b=LvLED9zKKNR+hZsyHGHhGELS14MB/WEXHtRp6VY7GibwJAfKb9h7IWSjQFPiFmsi92
         QX77B+D9mkTdDNSpBcpGXowlL01VJDiYEUlWrVpZrzLxfXtL+EnC/c5bsUPEn5uWgFWr
         cji8lbdVBIzyFeuFjYT6V/c1SzqlRJFg4qKGBBFH3nL+KfY9AzAnDDE3jcS6he4OnR8r
         wBMRvuMHLneRFHSy0WnZbQyjLvUMm8sPaZ9NOXO/FvAH8S4UJ09iF/BuZGYxLjGqlLzr
         BneolPRCh1Jup7LOe+NumthGim/aC/LQMkPgItcPzL4S2z4uAMDyFPXhaXYjDOKXSctt
         Pe2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx4D0b2Vfff2g3hughld4Q3x/2mol9gxjmtkHZ7ZAV8HQ2RKa0H
	2p0S4F/h4qudZnO1M1DSwsmP+g==
X-Google-Smtp-Source: AGHT+IE7fhLWzQ63w7kw1HXxUahNu1la8vnq9SE3PZhNhDoP4PI09fhf6xgpzPpWEoXdHioNm5nCQQ==
X-Received: by 2002:a05:600c:4f53:b0:405:4002:825a with SMTP id m19-20020a05600c4f5300b004054002825amr19695541wmq.13.1699084908644;
        Sat, 04 Nov 2023 01:01:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1d01:b0:407:7dfe:c2c6 with SMTP id
 l1-20020a05600c1d0100b004077dfec2c6ls1221046wms.2.-pod-prod-01-eu; Sat, 04
 Nov 2023 01:01:47 -0700 (PDT)
X-Received: by 2002:a05:600c:4514:b0:408:53d6:10b3 with SMTP id t20-20020a05600c451400b0040853d610b3mr19427455wmo.22.1699084907021;
        Sat, 04 Nov 2023 01:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699084907; cv=none;
        d=google.com; s=arc-20160816;
        b=yORxL4+7yikbesZhr4Dd4b+K4GW5BUQoi33QkU8VIug6fNkugdH6gZ+qfJ8yxttpdT
         Qn2DpFquq5WiYkLn+qyXzf2y+5xcw2wlrNjeEa+7yVr731eFNtc0zDx5NTBb31EeZ5qF
         DsFYjEJacU/iSZH9ufa0FEc0rL9yraI9+hi69BChaaT5SStr8n35GT4mvEptEo5QglQ2
         vaFK9+NuRkuxGQyAKGIyHtY4f7+WEREVpVYpXxZLSHPsTOEUAfnK6fXQ4+KQclO2/Ao5
         oqQRhZv2Hjzhnk8+y5KFj/XCuuuwHPboFZFXuDtsSJpCF0ZGi7SZHj38fRAtR/z/0lnn
         gcUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=hS3Le+HbToOOqCmf/VLmbjpEkM0sZUVHEoDgdyjma5k=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=ANE5HOtojOfau/wSeJkq6/q9ksJPZ6IAai66QPmWqrMJaHcrf1N8cNFJeYw+XJbubn
         lVW55em6PuFoB/8dLjODPGaSgdSS8qCArxqnFee07qCI1P4q7tFoBCw44ahWlaMUhIXH
         etmiSqi+jHNMKHr98K07L7dGCCo/5LoAw6n5KVLF9burQjfMcQvLEmIX5y87BZ7k/b9c
         12zbxabLTNQhcTexd0IFeTtjQcznLbCjaH0hgwy+eKIn+iuNC6qbh8/Si1Ju3FmnIXqf
         J0ZCHCsrz6ERFf/axb0vNYC1B2e9H+1PRkDoiZDEa4eaUHDy8aeFlELAP8bCkYiYPGO0
         yirA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=GD7lTzC0;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f9-20020a7bc8c9000000b00405324e1dc0sor864661wml.8.2023.11.04.01.01.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 04 Nov 2023 01:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:adf:d1c9:0:b0:32d:8505:b9d7 with SMTP id b9-20020adfd1c9000000b0032d8505b9d7mr19906302wrd.43.1699084906348;
        Sat, 04 Nov 2023 01:01:46 -0700 (PDT)
Received: from [192.168.2.31] (85-70-151-113.rcd.o2.cz. [85.70.151.113])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d6e91000000b0032d9382e6e0sm3724244wrz.45.2023.11.04.01.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 01:01:45 -0700 (PDT)
Message-ID: <b8fd6e0b-8164-4992-8124-135744430b9c@gmail.com>
Date: Sat, 4 Nov 2023 09:01:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v5] usb-storage,uas: use host helper to
 generate driver info
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
References: <20231028174145.691523-1-gmazyland@gmail.com>
 <20231103201709.124372-1-gmazyland@gmail.com>
 <d26c884e-3505-436f-9a76-ec701fb5e2bb@rowland.harvard.edu>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <d26c884e-3505-436f-9a76-ec701fb5e2bb@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=GD7lTzC0;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 11/3/23 21:30, Alan Stern wrote:
> On Fri, Nov 03, 2023 at 09:17:09PM +0100, Milan Broz wrote:
>> The USB mass storage quirks flags can be stored in driver_info in
>> a 32-bit integer (unsigned long on 32-bit platforms).
>> As this attribute cannot be enlarged, we need to use some form
>> of translation of 64-bit quirk bits.
>>
>> This problem was discussed on the USB list
>> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
>>
>> The initial solution to use a static array extensively increased the size
>> of the kernel module, so I decided to try the second suggested solution:
>> generate a table by host-compiled program and use bit 31 to indicate
>> that the value is an index, not the actual value.
>>
>> This patch adds a host-compiled program that processes unusual_devs.h
>> (and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
>> (for pre-processed USB device table with 32-bit device info).
>> These files also contain a generated translation table for driver_info
>> to 64-bit values.
>>
>> The translation function is used only in usb-storage and uas modules; all
>> other USB storage modules store flags directly, using only 32-bit flags.
>>
>> For 64-bit platforms, where unsigned long is 64-bit, we do not need to
>> convert quirk flags to 32-bit index; the translation function there uses
>> flags directly.
>>
>> Signed-off-by: Milan Broz <gmazyland@gmail.com>
>> ---
> 
> Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

Thanks.

Unfortunately, the build rules, I removed in this version, are needed, see
https://lore.kernel.org/oe-kbuild-all/202311041507.AOYwj5tK-lkp@intel.com/

I'll keep fixed version in my branch on kernel.org for a day and once
there are no such bot reports, new version v6 appears in the list.

Thanks,
Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b8fd6e0b-8164-4992-8124-135744430b9c%40gmail.com.
