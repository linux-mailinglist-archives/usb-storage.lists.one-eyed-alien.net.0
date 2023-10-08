Return-Path: <usb-storage+bncBDTNDO5RRYJRBNEIRKUQMGQE6V56W5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2347BCDC7
	for <lists+usb-storage@lfdr.de>; Sun,  8 Oct 2023 12:28:05 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5342c8a70a8sf3161929a12.1
        for <lists+usb-storage@lfdr.de>; Sun, 08 Oct 2023 03:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696760885; cv=pass;
        d=google.com; s=arc-20160816;
        b=PjyMApfwLmWmrg4HvfGfubowUz4BpyVlE8UVT8Fs7MiDRqcv6K6f3mAy6GjLbWPp4X
         tzUxnmcZJdQ6WWQw5vr1xJHIVuslro+g8zDb0tpGieblEz13dnRpzP/OZZuzYr8r6jZw
         cCStCnQ8lQivMyYwQzRJxura/qxlxVklC9MbvcrECKOswoMkqny3fyJ3lNzSqjXyMFjC
         Z/QbUFOgNFVh/KuH6Ke6fOGxV/fM5d6j0WWjDZ35GOFEX8GuWpyH+lIR/hQ+aW9AP3Lp
         7W2eVFeyfGaBC2+gNzP1gzz3UlSNIMcw8rF6k5HWiL2Dpkm8I9csaI6yKXShVCDPXcB0
         dKYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=DwNt3W2aNVAVi7JP/f9PwmbcP6B60FnSGssBoJWP95Y=;
        fh=aWARB5vJT8pi1U+BnZ/vNf+/wUfOc2GQz5/bjSBLbDE=;
        b=jAiMIpxRb0gLD8xM4n9K1UN5NjSKsIfb2o8UrVy29JwCmqz/uY1qregHo1Bg1zzsJw
         n6FuOLpKpm/dR1A6oDRDnG5/h3MHHCNBJKF2dOndNHGFKrlYjKa3Z4IR6Zs6tZE0HDTt
         T9Vure0EPCPJzRgm98lkLUq0ddzl4rJGqOtIItjyREB+CcTJq/nzSyTgXK9Z6aQ+1k7k
         QC1O/wifz8JLrDdMas//qokgKy9RLcSC0rscM7YrJo9BVJBq/hPVrJRE2yCBpSltyGdZ
         onC2SKEaGn3ZXhcuhQEJD+4GyqZ3np3mvZ8w2xjM1b2m3Hii6GsJXn+oBiv/t6Ly8pRB
         BEPA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZEl8tb3Z;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696760885; x=1697365685; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DwNt3W2aNVAVi7JP/f9PwmbcP6B60FnSGssBoJWP95Y=;
        b=VfeiYHAKDQlqk3bpA92lolPV6oh+5M2zgfKrawY4DKdh3xad6pi/z2EkxNFfMRYEj9
         4OKJ0SctWflytEynuWmkLSy4Ki6NV5wSsu0KItaLayzdfAcYu1MCs/sVopoLWhFCjl75
         u3FNmfEGIKt5OJj8BloDOw5G+es3r8NKYztB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696760885; x=1697365685;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DwNt3W2aNVAVi7JP/f9PwmbcP6B60FnSGssBoJWP95Y=;
        b=CUiP0qHpGISdZdpRQQXKuEOfrNfvwRhCM4AWe3TSAMmdEwShLMjtBT6PnaV+d5mJZi
         DM86nu99UAnT6/dQk2azML9z19nkc89aaVXWrf81/spkV6BnEzr40PagI9MQvI1gizEM
         aO89ACqpPljnS+0t4525DJNX5RIuJ0+OhqZA1X0jysFs12p+tP/sVTbIxDceSNv0uOWR
         xKvG9k6+pB+n34HZUzr7O4Rh9fPy+Y0iBqB94LQWktmuUh8kns/oEgZ3f/SthOg+pF2O
         2dSGSPRHsaZGde+tcMTCJpEkRLwf/hB7gozFZv5nduetaSuc2euiJpDnN/2KpCH1XozI
         whqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YySPLS/sk7Je19syRynj+mXE7fhHGCwLtNBGZRR+SrYfGmiSsNh
	Ejcq9t0xEDlxFPeTmXChWc9xXw==
X-Google-Smtp-Source: AGHT+IGhW2TVc/rVvBp+h3+DpqJ068GfylFqFxJeeMnYl2flj+vybl6fIpwmRngm8SijbLKcHndxPA==
X-Received: by 2002:aa7:d8d3:0:b0:52b:d169:b374 with SMTP id k19-20020aa7d8d3000000b0052bd169b374mr10367821eds.3.1696760884958;
        Sun, 08 Oct 2023 03:28:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1a36:b0:534:57ab:35a with SMTP id
 be22-20020a0564021a3600b0053457ab035als100607edb.2.-pod-prod-08-eu; Sun, 08
 Oct 2023 03:28:03 -0700 (PDT)
X-Received: by 2002:a17:906:9c9:b0:9b2:ccd8:2d42 with SMTP id r9-20020a17090609c900b009b2ccd82d42mr10049575eje.32.1696760883278;
        Sun, 08 Oct 2023 03:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696760883; cv=none;
        d=google.com; s=arc-20160816;
        b=Mq3ksFgMe7cjavbAohKmO0qgpYs00r4k1UXt7saSe417pUP7hnG4atNpH0opR02/Ku
         FYvLD4zPlJCACSisP3xbQ2t2Ah1Z0sfOlBs8c/Wsm0HeiI6YFL5R57t/fjaIdF81zMzZ
         A58dtRnAGexyGCj6e8gavL6vCvGVbW+h5d0gM2zQEkpkzqNwLGzPjwm0KAxBzrO0rS4f
         kdpIoo/VQVKQcPtlZVHoN4rBrNh2JPh8UiWP4JfjC6miPxXIqgKzppzb/DiNeSN2tsE4
         ETS5nWrn37jkUiAodKViU2eJIvfHIC7qtacYZ6rayGUynFvjvKLpn8nH7P7z6lwbTj56
         xnnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=+dQ/foJ/DrtuVvzO4TaPDol4h8q7eiOGkS+VISQXOjo=;
        fh=aWARB5vJT8pi1U+BnZ/vNf+/wUfOc2GQz5/bjSBLbDE=;
        b=dUVwiDmrTiPm8oamFeCdrMCbhTXHJwQd6opqqKOdSy8HgQTPe77l9ld6gWDfoVnu9y
         RSjUXtd4kyvQ/XfpsCPopiwT7zkOjrhClhzhmY4MCfOcba8zqMOBHr4s0I1cBZE1/XPj
         hi1EpskUJ2OVD19zXt1zWCrM5uc7YFvFYOI9dsOMLPT/GSSc6Vav/1U+mGuy7BF2RYO9
         rMEZaXJ1eB/1OPoo+H354ZP53+KS3u27S+0jCpJGxjL/Y2hiPy0nnKJRUyifdvlFy7wR
         EWADZAvpH33Afz53NVVi5U91VNFnW1zdtaTvQz3rcbImWw17ty7WF+J7TTXqCDCa17e3
         UERg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZEl8tb3Z;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id my48-20020a1709065a7000b009adc765f931sor2578524ejc.14.2023.10.08.03.28.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 08 Oct 2023 03:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:780d:b0:9b6:4df9:e5b5 with SMTP id la13-20020a170907780d00b009b64df9e5b5mr11509294ejc.61.1696760882666;
        Sun, 08 Oct 2023 03:28:02 -0700 (PDT)
Received: from [192.168.8.101] (78-80-112-174.customers.tmcz.cz. [78.80.112.174])
        by smtp.gmail.com with ESMTPSA id la18-20020a170906ad9200b0099cd008c1a4sm5388228ejb.136.2023.10.08.03.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Oct 2023 03:28:02 -0700 (PDT)
Message-ID: <49522775-fa90-438d-bf66-cc6cca6da738@gmail.com>
Date: Sun, 8 Oct 2023 12:28:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [RFC PATCH 1/6] usb-storage: remove
 UNUSUAL_VENDOR_INTF macro
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
 jonathan.derrick@linux.dev
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-2-gmazyland@gmail.com>
 <691010ef-d388-4ce0-b6a0-427bf77bea95@rowland.harvard.edu>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <691010ef-d388-4ce0-b6a0-427bf77bea95@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=ZEl8tb3Z;       spf=pass
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

On 10/6/23 19:16, Alan Stern wrote:
> On Fri, Oct 06, 2023 at 02:54:40PM +0200, Milan Broz wrote:
>> This patch removes macro that was used only
>> by commit that was reverted in
>>   commit ab4b71644a26d1ab92b987b2fd30e17c25e89f85
>>   USB: storage: fix Huawei mode switching regression
> 
> The standard format for referring to commits in patch descriptions is
> like this:
> 
> commit ab4b71644a26 ("USB: storage: fix Huawei mode switching regression")

Sure, I just forgot to put it here.

Thanks for review for this usb part!
I'll send a new version with fixed issues and your review line.

Milan

> 
> That is, the commit hash is abbreviated to its first 12 hex digits and
> is followed by the commit title enclosed in parentheses and quotation
> marks.
> 
> Apart from that minor issue,
> 
> Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Alan Stern
> 
>>
>> Signed-off-by: Milan Broz <gmazyland@gmail.com>
>> ---
>>   drivers/usb/storage/usb.c          | 12 ------------
>>   drivers/usb/storage/usual-tables.c | 15 ---------------
>>   2 files changed, 27 deletions(-)
>>
>> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
>> index 7b36a3334fb3..bb1fbeddc5aa 100644
>> --- a/drivers/usb/storage/usb.c
>> +++ b/drivers/usb/storage/usb.c
>> @@ -110,17 +110,6 @@ MODULE_PARM_DESC(quirks, "supplemental list of device IDs and their quirks");
>>   	.useTransport = use_transport,	\
>>   }
>>   
>> -#define UNUSUAL_VENDOR_INTF(idVendor, cl, sc, pr, \
>> -		vendor_name, product_name, use_protocol, use_transport, \
>> -		init_function, Flags) \
>> -{ \
>> -	.vendorName = vendor_name,	\
>> -	.productName = product_name,	\
>> -	.useProtocol = use_protocol,	\
>> -	.useTransport = use_transport,	\
>> -	.initFunction = init_function,	\
>> -}
>> -
>>   static const struct us_unusual_dev us_unusual_dev_list[] = {
>>   #	include "unusual_devs.h"
>>   	{ }		/* Terminating entry */
>> @@ -132,7 +121,6 @@ static const struct us_unusual_dev for_dynamic_ids =
>>   #undef UNUSUAL_DEV
>>   #undef COMPLIANT_DEV
>>   #undef USUAL_DEV
>> -#undef UNUSUAL_VENDOR_INTF
>>   
>>   #ifdef CONFIG_LOCKDEP
>>   
>> diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
>> index 529512827d8f..b3c3ea04c11c 100644
>> --- a/drivers/usb/storage/usual-tables.c
>> +++ b/drivers/usb/storage/usual-tables.c
>> @@ -26,20 +26,6 @@
>>   #define USUAL_DEV(useProto, useTrans) \
>>   { USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
>>   
>> -/* Define the device is matched with Vendor ID and interface descriptors */
>> -#define UNUSUAL_VENDOR_INTF(id_vendor, cl, sc, pr, \
>> -			vendorName, productName, useProtocol, useTransport, \
>> -			initFunction, flags) \
>> -{ \
>> -	.match_flags = USB_DEVICE_ID_MATCH_INT_INFO \
>> -				| USB_DEVICE_ID_MATCH_VENDOR, \
>> -	.idVendor    = (id_vendor), \
>> -	.bInterfaceClass = (cl), \
>> -	.bInterfaceSubClass = (sc), \
>> -	.bInterfaceProtocol = (pr), \
>> -	.driver_info = (flags) \
>> -}
>> -
>>   const struct usb_device_id usb_storage_usb_ids[] = {
>>   #	include "unusual_devs.h"
>>   	{ }		/* Terminating entry */
>> @@ -49,7 +35,6 @@ MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);
>>   #undef UNUSUAL_DEV
>>   #undef COMPLIANT_DEV
>>   #undef USUAL_DEV
>> -#undef UNUSUAL_VENDOR_INTF
>>   
>>   /*
>>    * The table of devices to ignore
>> -- 
>> 2.42.0
>>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/49522775-fa90-438d-bf66-cc6cca6da738%40gmail.com.
