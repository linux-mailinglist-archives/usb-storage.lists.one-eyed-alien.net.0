Return-Path: <usb-storage+bncBDTNDO5RRYJRBTVN32WQMGQEIIGEKPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC2A8404C0
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jan 2024 13:15:11 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2cf3568559fsf14708831fa.2
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jan 2024 04:15:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706530511; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFVjuidNVh5fatpcZg2uTqtdCVDhI2TxRgo5uM0sNOrUYdhCS+flsjUQi6gnIJEmM8
         9RdLgQMMJxZ7Ter6RPUsD6ZrDlP+HlNDUFT1JnWRbup10t5NXc1jd2yRQ8qa0nnucdt/
         SoEeFpTq2VquY7PMUxOdNif0KgqHy84f+/2e4DWUGvj7FrzVCm2YL70q0S/1BmTCCPdD
         Iz4t9CytFDcfczmqERExzUICHX+8fVMsvRk0vTTx7asf9C3iQUG4epgs9sRnTW0FW0ii
         oUk79NJl0EYI/cqNaeIPc/h1UGWcRaXVTuSg6Da4Wd1R0jZFfZ88ipx+rl5wxHiCFNr5
         7XAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=VvejneL5pho/J4wR9JoT+zzORHVIiFchyEK3+hnA8i0=;
        fh=IelrNM0Hod9abwgeEpLwY4j17xJUw4YqHKAIAb+uXhg=;
        b=DrvAWvfnPtojvgjGd7jS2xMYn8JAHPIAt1a+tBajyGnoAPA5C0ZpJIwhCyHEYjjRbh
         RKUSRqZFMkHYGP1/QDRj3LXymEtMZoU/p8cgCkd75KFZn3it/s+CDj5N0rk3R1zAjM0g
         Y3lqxM8JUqXVRC2ga+jqZbBE9UnP4FIoNXamVFRT/GU/fYnzW76kDrR4OJdE/qPDVpU0
         ufFxCTc8AVMEMt9NpWqYKZs4D8xs83vaqWqejH3sSFnyumhPqWfmjFE8wWb8UOTTH9ME
         0eIi8Hz9YiG3bN/Y69dbeMZmKGpEYB3SuTe7x2/XoCFFCiiDiQcOMxjAmSAIRn95gAjG
         2v9Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S6kaRXqH;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1706530511; x=1707135311; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VvejneL5pho/J4wR9JoT+zzORHVIiFchyEK3+hnA8i0=;
        b=K85CCfM2LD96yEJrlerPY7kzMJxSptqJPHHCBjWTPruwBpvEhFCMBiFZEYyjTT1VZp
         H25AhNdfWnr/PusSETN1D5KhPGpqpy5XnD360O3YLu5Zr++kofFYpZCYlfhA/JNJAMgn
         BX8aHqxm7Dr1ovksUi1m+467EnWpJPiSKqz4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706530511; x=1707135311;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VvejneL5pho/J4wR9JoT+zzORHVIiFchyEK3+hnA8i0=;
        b=ig1ekmlQpIk7uLbGL6em/BsVNVrAceW0sHFs449vdjhtBzDG7RbBK8Ymhx7unPojwX
         NLm9MUHrk4QJy2mLNnzBEiJTZaSgpDQYbuCrUrPCECf938JqaH7DVLpJEJQnEiWnVZD0
         PaoznumBgwleXP4q5QlvV6GkbRC85gjzlruAzvotiRAg0hVqUODu0FrZKPtYRRPV21U0
         NiL93P3uYdVIgK2ClHYTmmhYiCt/IldnL7rl8bCK1/03oeTpQgY88Op+dtW7w0zhPCrs
         2+cIIz+CU9JCpQobJa0NT51H3EQ/Ia4e5HzBckVp8n5pKY32LW/7NzUrIhTIshxzdSUg
         kgyg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzBUZ9LNFrjsIycVXwUjDZI9k2ZNmaYNjmJImNgWCyzrNRgJZm7
	YBDPj9HTYizWgjtrOuaGEV4IM7Jf6gjIqNURyKs1eseXVi0FOKIxRvJOMl/bdww=
X-Google-Smtp-Source: AGHT+IHPiS4gkEyVNfBSAH5od4460CeuP006XJ3uYXgZ/v4m+ASiW7yDXOTQJmTkrjF7/YMDXk9noQ==
X-Received: by 2002:a05:651c:1505:b0:2cf:276f:83e3 with SMTP id e5-20020a05651c150500b002cf276f83e3mr3968714ljf.28.1706530510595;
        Mon, 29 Jan 2024 04:15:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:9144:0:b0:2cf:192e:d7c2 with SMTP id q4-20020a2e9144000000b002cf192ed7c2ls682796ljg.2.-pod-prod-02-eu;
 Mon, 29 Jan 2024 04:15:09 -0800 (PST)
X-Received: by 2002:a05:651c:1423:b0:2cf:33b9:81e with SMTP id u35-20020a05651c142300b002cf33b9081emr3065696lje.38.1706530508691;
        Mon, 29 Jan 2024 04:15:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706530508; cv=none;
        d=google.com; s=arc-20160816;
        b=NWav0nsJqQAJi4Gu65u11ZeTiqnafcSRBHiVlMMuQessVRPjhWW11ntgSuXYKIfcdi
         78WrmicqRbf0AF5x/1bRHWWRed9yWatEit/Um0pOdiYE+mmbaYHAfvbYxXaCu6g6/50N
         GSvGp3uKn9gxQ7uwK7avL1NzP3FJtUxGa2ASDAK0udBR1GelRYrsxiUrLCRT16SqwwgS
         4pMz/9uE9s83AfpGtAdKxcHhvtYLA/I9HK/rNZX+RzpJAZf0NM1cCnBlvWM95gGHzp3W
         N7KcyL4t8/7qaUiDqeT4MvfOPdYMInHxUscicXbkcjm4LuzzftWxBfr5A3pX2TFqSEsk
         G+Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=mqRoSHyswOJrlTJyBofvgWzOmdNKPgyLvJaTfIS9prk=;
        fh=IelrNM0Hod9abwgeEpLwY4j17xJUw4YqHKAIAb+uXhg=;
        b=l9bfrBtwneGxga2R6do4P3xEqjtldw3rUEIn9h+PFc3MSgsdNwUpJ0D90dHstv14zB
         Y7oMAvo4NBPgLVuDMXWHwqQtcuqA/vzj8+YXqCKtStRCA7aLwEwOx1xiLQxhsMArVN3m
         F+RdrCU6nKNwhF8N7Gis+IVKIGn3xF4xOXbCkVincKM6OIcNFesN2iwMhoKd7zLzkseF
         OV/7VyNMVbopAiHChsD8JHGwUOdA9fDZ+E0Kh6iOD3/rUrY2BcR3IUWUiZO15eS/utzU
         QugKa/6a4Aqr/n0yf0kvmhL3aUlrmhvWRtjXz0z2VJgDOjiP9LGWQXrFQ2slwz/urdyv
         19wg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=S6kaRXqH;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f13-20020a2e918d000000b002cf1d067287sor1099309ljg.8.2024.01.29.04.15.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jan 2024 04:15:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:651c:169b:b0:2cf:1033:c745 with SMTP id bd27-20020a05651c169b00b002cf1033c745mr3250420ljb.51.1706530507932;
        Mon, 29 Jan 2024 04:15:07 -0800 (PST)
Received: from [147.251.42.107] (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id ba8-20020a0564021ac800b0055f2af9b01bsm5102edb.17.2024.01.29.04.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 04:15:07 -0800 (PST)
Message-ID: <bb51d22e-5895-4d7f-af09-38cd9609fcb1@gmail.com>
Date: Mon, 29 Jan 2024 13:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v6] usb-storage,uas: use host helper to
 generate driver info
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, stern@rowland.harvard.edu, oneukum@suse.com
References: <20231103201709.124372-1-gmazyland@gmail.com>
 <20231105182047.166007-1-gmazyland@gmail.com>
 <2024012744-ungreased-retention-4e84@gregkh>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <2024012744-ungreased-retention-4e84@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=S6kaRXqH;       spf=pass
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

Hi Greg,

On 1/28/24 02:50, Greg KH wrote:
> On Sun, Nov 05, 2023 at 07:20:47PM +0100, Milan Broz wrote:
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
> 
> I see the need for this, but why now?  We haven't run out of ids yet
> have we?  Do we need to add another one?

I had a patchset that needed a new flag; that was the motivation.
However, after a discussion with SCSI people, it needed to be done differently,
and I had no time to rewrite it yet.

In the meantime, the flag transition patch was split from the series.

If you want to merge it now, I can easily rebase & fix gitignore issue.

Or it can wait for the next first real user.

Just I have spent a lot of time with this, so no need to repeat this exercise, though :-)

Thanks,
Milan
  
> Also, after building, I get the following files marked by git as needed
> to be added to the tree, so perhaps you also need a .gitignore file:
> 
> $ git status
> On branch work-testing
> Untracked files:
>    (use "git add <file>..." to include in what will be committed)
> 	drivers/usb/storage/mkflags
> 	drivers/usb/storage/usb-ids-uas.c
> 	drivers/usb/storage/usb-ids.c
> 
> thanks,
> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bb51d22e-5895-4d7f-af09-38cd9609fcb1%40gmail.com.
