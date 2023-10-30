Return-Path: <usb-storage+bncBDTNDO5RRYJRB7XF76UQMGQENG4UDXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B247DBF91
	for <lists+usb-storage@lfdr.de>; Mon, 30 Oct 2023 19:16:31 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-54132059c6asf3017570a12.1
        for <lists+usb-storage@lfdr.de>; Mon, 30 Oct 2023 11:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698689791; cv=pass;
        d=google.com; s=arc-20160816;
        b=SOd1j0IJvUDFzy3jCQT3dyWJq0Yw+86nRA8xlNGq6/H8n/awBQUtunNmAKOz0FMwo/
         IVl/byHU0n1Mb9hnVL+l9SbPBzbxIgmN+wHpER+T4FNiM4AsWVwhjBkPzARFKkU23q4p
         OnuWu+Oq18s5tFmvr8o1B5bPfeVoVOeEHNj58ykE4dwQEuIrhK0uBqYB3CU1N4ongxg4
         TkQLVQoDdqYzYTatN9Ulp5zrPbcPVQGdoH69L1anJOUpfUi69UikcGtkw1Mxqqp0skm3
         Pr4Yx4glnNOFQcl++YC56sTBY+iNFtX/TmmWy6ewP8J6bh6lAnEZS5yWalm051rmg8lw
         7hbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=gpvK1mKrQWX+M5p2SwDyp9sbrBY8EZCIuRkQ4bz1id8=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=tCp7XKZly2IWxvaE68DcZ61+73/mXf/euQ+MTtD8MQw0cAm+0wHh2Mj3U0bjEs/4wC
         Wp4RgHDgR11qKKpd6LYfhl1pTqsipNyLIcpP5Vv/XaTJBkd9z3L3pl4xR7/Ir/d5MoD2
         9XKQ7NLXXRqxiJAFpcp2XNCtr8+XBQYr02hMiHlElJCDQrgc6NpYHR1mG3oa7C3uOJX7
         x+4ESDtLCwjUrlsOZtDBvamkUYMc9H0DDfYed6C4LKDeSbpzjWcq7SyUEghzqsPVgOJh
         3ruqwfUd3K0Fv1eEALy8QKFSssU8mmL8nZqgcHqa1t1Lge9XvYFPgq5eFAQ0o+vc9oLC
         fJqA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="Y68/BpQK";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698689791; x=1699294591; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gpvK1mKrQWX+M5p2SwDyp9sbrBY8EZCIuRkQ4bz1id8=;
        b=hhxb7NkpUJzSJZX82Cn5qexkEPrWZ0qTrS21h4aT1orSFNAJujkBfJhgkw2H+PZsGk
         Xn1pbxcWiQ/Xb6hxZVIVQdcbg12nIFqiNoyWX9unrE/04xcaqWBSERXnUNy/k09deDoY
         nnSPT55zqY9/Q1wlVa6GBZNvD1hsX1qgQHx98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698689791; x=1699294591;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gpvK1mKrQWX+M5p2SwDyp9sbrBY8EZCIuRkQ4bz1id8=;
        b=PVSwcd5kkCnxvqSS5umvgBmzNZSm+P7r7Y2Vfe2mv/Fo8JjiHSLQG/XoRvMRWLYoBs
         v2fkjUhN5aMDx4cTC84br8HllyuG5ZuhEVL9oJKMLhB0m5Aw2MEMqZG9ipGPhgyMpw/b
         PoAv1R/yGr6SgSmjDLpOUIIEeLiKm8Zpu5CdjsOGl2zQuOvQdnbX99CIHSqF6SZdO6SQ
         /Cp0hYBUeZ6HD8kb5c6XcS8Z0nTUwwNPJWh0X9/+PVyO6Db35YF8pYa3n8rlu09iDKV5
         tgpVR1yVVfxHgvZS23Tqdfjyo3nW6Bw8TA/el413XocUu/RVLkguolPnothOmVV0NDqF
         Friw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzY6DVoGgksPp+vCeBn6E7cUYVBqwsKNYKnk0X3aSrwPRG7sk9H
	8kDhhex8gmsMnJVqU3gS8C9zgQ==
X-Google-Smtp-Source: AGHT+IHiFxnh2HiFQlBimCDroEaWyhUnnKPk/jwi86WYEBxPlK2mTuG+mfixbXjL4pa8WgXh+hc75Q==
X-Received: by 2002:a50:9e24:0:b0:53f:a017:7526 with SMTP id z33-20020a509e24000000b0053fa0177526mr7522454ede.40.1698689791048;
        Mon, 30 Oct 2023 11:16:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d281:0:b0:541:bda:4c05 with SMTP id w1-20020aa7d281000000b005410bda4c05ls41763edq.1.-pod-prod-09-eu;
 Mon, 30 Oct 2023 11:16:29 -0700 (PDT)
X-Received: by 2002:a50:cd81:0:b0:540:a6ab:4c33 with SMTP id p1-20020a50cd81000000b00540a6ab4c33mr8933131edi.8.1698689789379;
        Mon, 30 Oct 2023 11:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698689789; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3nrFzkiVX7fAdpp7np0tEEqsyYBrAJ+U+XogrFs/T//z7RNUA6Iuna8bIWvloxR0P
         PjsHqq52jyPaG6mP/xtPc0gbCHebDvuRsmoKGe+pwCG6QcPt242kEfatycCrZAypJN9u
         SExGSQyt4+IcxYqIMpBMmdA0xlcxsw1SKpn6cvXTEDxeZzCvsxkfn5G5ZYMsttYsLHnI
         vcq7fu/6/YrXi8e5T0m74EgdqZCLRxcoo996NB0i14bRURSKIdbGM99ptrbUXFh73534
         UI+NDfI0ch/2/dvGZEhb9nG+BuEUcCcqssiDXH3vl/406To9WvjXOJVOeyYACepwLaLC
         YG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=E+SLeA2ywujo0UQWzu6cCHaMWc4I0sH1eRVwPgmtHyM=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=XmTnDqQ4fX3yDk2ZpDNWywOeS/J0UBAEntyW87Tz7ByN9/R6iGHozZ+y06tu/zNVs2
         /Df9jNnrh5nW81w41rEsBuSnhQA9IuFrQx2/A6Gso+lcke0KUg1E7Fjw0XheyKIbF6BZ
         prpP9lFGDCAX4sge6YVVB/qsTwn7C6x4adw5Yz518YwEcxgf9MSkMpsizRRfjf69MVlI
         Zatq/T8dwRy7ng9xoOFvSuR7zp4B5SdHyXhD1a4a8wp/EyJvgODldrg7pB9ovX7AS4A7
         r4s02j4HaHxUq1AbGE5Tw7NNfRyYMIGRMUFhPg5Ho8xNW/LExADV19ge4sBaV8+V0QQZ
         bLow==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="Y68/BpQK";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id l27-20020a170906079b00b009bdfc4b1b7fsor2516444ejc.13.2023.10.30.11.16.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 30 Oct 2023 11:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:b257:b0:9d2:9dbe:a2f9 with SMTP id ce23-20020a170906b25700b009d29dbea2f9mr3942214ejb.50.1698689788708;
        Mon, 30 Oct 2023 11:16:28 -0700 (PDT)
Received: from [192.168.2.30] (85-70-151-113.rcd.o2.cz. [85.70.151.113])
        by smtp.gmail.com with ESMTPSA id fy19-20020a170906b7d300b009cc6323fe5asm6340242ejb.134.2023.10.30.11.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 11:16:28 -0700 (PDT)
Message-ID: <db9dbd1f-2d49-4d31-9214-a4a2437f0fc7@gmail.com>
Date: Mon, 30 Oct 2023 19:16:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v4] usb-storage,uas: use host helper to
 generate driver info
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
References: <20231026101615.395113-1-gmazyland@gmail.com>
 <20231028174145.691523-1-gmazyland@gmail.com>
 <f6b275d9-eeeb-47ee-bc0e-3fd491e62791@rowland.harvard.edu>
Content-Language: en-US
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <f6b275d9-eeeb-47ee-bc0e-3fd491e62791@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="Y68/BpQK";       spf=pass
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


On 10/30/23 18:40, Alan Stern wrote:
> On Sat, Oct 28, 2023 at 07:41:45PM +0200, Milan Broz wrote:
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
>> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
>> index 46635fa4a340..b8c5daeb8ff3 100644
>> --- a/drivers/usb/storage/Makefile
>> +++ b/drivers/usb/storage/Makefile
>> @@ -45,3 +45,34 @@ ums-realtek-y		:= realtek_cr.o
>>   ums-sddr09-y		:= sddr09.o
>>   ums-sddr55-y		:= sddr55.o
>>   ums-usbat-y		:= shuttle_usbat.o
>> +
>> +# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
>> +# and usb-ids-uas.c (uas) with USB device tables.
>> +# These tables include pre-computed 32-bit values, as USB driver_info
>> +# (where the value is stored) can be only 32-bit.
>> +# The most significant bit means it is index to 64-bit pre-computed table
>> +# generated by mkflags host-compiled program.
>> +# Currently used only by mass-storage and uas driver.
>> +
>> +$(obj)/usual-tables.o:	$(obj)/usb-ids.c
>> +$(obj)/uas.o:		$(obj)/usb-ids-uas.c
> 
> Quick test: After those two lines were commented out from the Makefile,
> the compiler still knew to rebuild unusual-tables.o and uas.o when
> usb-ids.c and usb-ids-uas.c were changed.  So these lines aren't needed.

ok, thx, this is perhaps relict of some previous try (I tried different
approaches) - will remove it.


> Apart from this, I tried running the patch through checkpatch.pl, and it
> flagged a bunch of issues.  Some of them were false positives, but
> others really should be changed to match the kernel's style:
> 
> 	The SPDX license line in .c files is supposed to be a
> 	C++-style comment, i.e., use // instead of /* ... */.

Perhaps just copied from header file, it is different format there.
(And my bad, I forget to run checkpatch after many last changes...)

> 
> 	We aren't supposed to add new typedefs.  Instead of writing:
> 
> 		typedef enum {...} dev_type;
> 
> 	write:
> 
> 		enum dev_type {...};
> 
> 	and the same for dev_flags_set.
> 
> 	checkpatch would like the FLAGS_END macro value to be enclosed
> 	in parentheses, since it's a complex expression.  Same for the
> 	HI32 macro.  These don't really matter, but you may as well do
> 	it just to get rid of the warnings.
> 
> 	Quoted strings (line 117 in mkflags.c) aren't supposed to be
> 	broken across lines.  It should just be one very long line.
> 
> 	Contrariwise, some other lines are longer than checkpatch likes
> 	to see (its maximum is 100 columns).  They should be wrapped.
> 
> These issues ought to be fixed.  But it's all stylistic stuff; I don't
> see any actual errors or things to improve in the patch.

ok, I'll send next version once I have time to do it.

Thanks,
Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/db9dbd1f-2d49-4d31-9214-a4a2437f0fc7%40gmail.com.
