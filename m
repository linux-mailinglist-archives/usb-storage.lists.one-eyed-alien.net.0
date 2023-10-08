Return-Path: <usb-storage+bncBDTNDO5RRYJRB44URKUQMGQEMD2CUFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F877BCDE2
	for <lists+usb-storage@lfdr.de>; Sun,  8 Oct 2023 12:54:43 +0200 (CEST)
Received: by mail-ej1-x645.google.com with SMTP id a640c23a62f3a-9adad8f306fsf277754666b.0
        for <lists+usb-storage@lfdr.de>; Sun, 08 Oct 2023 03:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696762483; cv=pass;
        d=google.com; s=arc-20160816;
        b=hBF1ce/Sx+0HviQLjLEm76eL1C+UjLxDzjBXG3ysAhNaykmlqFuM5qt2PHO9KJ46DX
         +JRE2tSlFcbCEhdAI1AKSPxvcOT0d0sEGjx0CsBsyfQeb1MwOkG6Mz1j4fP+/yJbfF55
         C/e3SCjmpIMD0RqvXv6BfU5I8elJT/kI0jwvWGLBixdVyYy/7pRmKS9CuogLuw7rMraw
         LYTDv1mc/sPOdgVNjepoOaSGOMZa16uxVAcPIU/3YfHMIP5LLObCcO6DrWtEle/hK/AF
         /EGigt04DISD9JD6+RzNamEwmyQ9naVxNAQH7g8p3zH1Zu9IbnUzoBRyxgqJD10Wqyuf
         Aqcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=BEVvt4HF51ol3OVv3iztNQoKvBAwZLdAESCc8wBSCiI=;
        fh=aWARB5vJT8pi1U+BnZ/vNf+/wUfOc2GQz5/bjSBLbDE=;
        b=DpjykAAp+pQ2e0RDSoAyZN+Atcgk6dKU0QHbHqrif9dRJfsJ8IRfWNBxgUXVq2sjMf
         ajvUvbs/ZKfsupqXQkpKEyo75hcbua1LQ6Ct/Uepi0fxpeDu+AJuv+tFRS0k8WSV/jt5
         gGblMLpGjwzzQO+pG/G8qLrJ6zRZb/YY2qECgMPzG3zrSI2/6yvJW+Hn33yixZqxBrgS
         kuN+jrtsn//yov07yV4HNlDn5fcovW5dOAgg3R6uwaWyjMOysUIyRhUwde9W6mw1M+6P
         en4+bg61d3k92sXkK9A23d+ZHBqs9HBJv+op05MPwphluNZAJWS8rY55ThJ1seWGzXLd
         4hWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Elcdp2O3;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696762483; x=1697367283; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=BEVvt4HF51ol3OVv3iztNQoKvBAwZLdAESCc8wBSCiI=;
        b=YGDmv7+Q3JPCj0LYxYvCbaaGgedHks7NK5zARUSwAU/Bt14k14UPJNBtXeotM1Qagt
         P4APq3gSUxU0ESvmKtzAT1XMD1GZhMfneBbnE/HvcKP2BYMZIfwSYFH7htt6+b1K4Ysc
         r5yFip13lE3EBoRSBe+k3EMjWro7v23V9G/AA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696762483; x=1697367283;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BEVvt4HF51ol3OVv3iztNQoKvBAwZLdAESCc8wBSCiI=;
        b=XfshITYSMhDhd22PR6msYjUUXUz2mV9tjVbhE5A2MpM9d+o21XzaCHTSCQHiccVw16
         YlV/3jYhtvWmK6kZ3wED21+5Gn1MEuaiXsD994MGXHtrwBnUxfXgHE0UvhSSC4E/zH6t
         yQPXDivYGRDxjhMrJrDVhfy9K5ci1HH/MD8vwfWZPKtjCETFoAu/zCwiLt6dYvFo3cvI
         95zwXONF4ZcrCHoPF+kL4xicLFZkSChuLpXi7BtCdDkpYl2uZYWVLL2gR5gedyOCErcs
         VVPoQhxcOoxpXcbHFxbZdM3UAvZd5SiTih9nU9YLbBx6492uMhXZpfWdhgwM4cBAhOaK
         U7fA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yyw6ulF8CyYcs3lZNSl0iAg7D0JGW5v8G4wL4RWJ4SYaA49FFcW
	rTATO0UDFXFC4LEIUYF63rwqDQ==
X-Google-Smtp-Source: AGHT+IFHGMH89r6G8gvPzAf1HnO/XsPjlyj7XAWkMF+p7RVeO41yd4rjzZnmEgJtuYRpSW1MK1LRIA==
X-Received: by 2002:a17:907:7804:b0:9ae:5fe1:ef01 with SMTP id la4-20020a170907780400b009ae5fe1ef01mr12298108ejc.37.1696762483409;
        Sun, 08 Oct 2023 03:54:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:c487:0:b0:534:7b4a:8d91 with SMTP id m7-20020aa7c487000000b005347b4a8d91ls426416edq.2.-pod-prod-06-eu;
 Sun, 08 Oct 2023 03:54:42 -0700 (PDT)
X-Received: by 2002:a17:906:154:b0:9a9:f2fd:2a2b with SMTP id 20-20020a170906015400b009a9f2fd2a2bmr9915591ejh.73.1696762482176;
        Sun, 08 Oct 2023 03:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696762482; cv=none;
        d=google.com; s=arc-20160816;
        b=ga6fFHey39EL4jawf7UCoz4iybC6IQf4AATND6TidlwEUxf8hSnojRpnA66dWthCJs
         LnRLcJquQ3W1mR/8h4qXFgaAmh9mREzpTU5cdv5IZHuGJcu/4g2nrcbb7rBX7txgHUzQ
         lEsfT5fqO7zj3Sd3ub2T4C2QSl4jn9rAh5yoEOAkizBEp/1IfT2zHPsja45SQa290pe+
         PkLUrYolYnxcMNOA2j6+0D6GlZm1RK+UTckfKjfxYVeVz1Ddnazc6YwNFbUjqh5y8yyV
         YTbNlAiSUU2uBR73gkliyttTGn76hftelYpkhBXsI4H0zHHoBrSIg+zwugxzhez46TJ1
         m8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=lyrbreD7MI9zq+OmTl7ayfAyL4KCwoOXdWIfPYkXGGk=;
        fh=aWARB5vJT8pi1U+BnZ/vNf+/wUfOc2GQz5/bjSBLbDE=;
        b=GtlRANqXNm5qG/2TDMMzwpD7ud+XbKgqFA29T416A+cTirteY713/d+rDuTNp0YEWI
         DnoIvCPbUoO5DMxyy8bgD7f+cU9z26ntqd0l/HvDLHQDzKGB6o4Syc4Wzc84Jsk1xJjS
         ws01QTrzNR2FBKkZNNInHB79KHM5Xyselu7FB+wSuJgRJdl+Eyfgt2ZBL562xhvKxt2L
         X1rFFrltogco+b8L6w0T2rjKFcW8X0qE4b+U6N8c4LfKhfi6I9hDUmhZ4puMbBUff1T8
         PvaC0i9TCCJ9x+CbE59ifZwFlUOr/AOvdXAca8xsZat3YPhnTKzIBDk/2DGGlEwHr4Mf
         l3uQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Elcdp2O3;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id hg12-20020a1709072ccc00b009ae61969480sor2654868ejc.12.2023.10.08.03.54.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 08 Oct 2023 03:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:5a6b:b0:9ad:a660:95b2 with SMTP id my43-20020a1709065a6b00b009ada66095b2mr11179661ejc.11.1696762481508;
        Sun, 08 Oct 2023 03:54:41 -0700 (PDT)
Received: from [192.168.8.101] (78-80-112-174.customers.tmcz.cz. [78.80.112.174])
        by smtp.gmail.com with ESMTPSA id o23-20020a17090611d700b009887f4e0291sm5398361eja.27.2023.10.08.03.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Oct 2023 03:54:41 -0700 (PDT)
Message-ID: <d958a609-e3b5-4ff8-a32f-98419d1ea8f2@gmail.com>
Date: Sun, 8 Oct 2023 12:54:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [RFC PATCH 6/6] usb-storage,uas: Disable security
 commands (OPAL) for RT9210 chip family
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
 jonathan.derrick@linux.dev
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-7-gmazyland@gmail.com>
 <e9aad1d3-1aa1-4f09-955f-6d9f6f604600@rowland.harvard.edu>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <e9aad1d3-1aa1-4f09-955f-6d9f6f604600@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Elcdp2O3;       spf=pass
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


On 10/6/23 20:57, Alan Stern wrote:
> On Fri, Oct 06, 2023 at 02:54:45PM +0200, Milan Broz wrote:
>> Realtek 9210 family (NVME to USB bridge) adapters always set
>> the write-protected bit for the whole drive if an OPAL locking range
>> is defined (even if the OPAL locking range just covers part of the disk).

...   
>> +/*
>> + * Realtek 9210 family set global write-protection flag
>> + * for any OPAL locking range making device unusable
>> + * Reported-by: Milan Broz <gmazyland@gmail.com>
>> + */
>> +UNUSUAL_DEV( 0x0bda, 0x9210, 0x0000, 0xffff,
>> +		"Realtek",
>> +		"",
> 
> Doesn't Realtek have some sort of product name you can put here?

These adapters comes under many names, the only common thing is that
it uses Realtek controller... "USB to NVMe/SATA bridge" could work though, I guess.

...
>> +
>> +/*
>> + * Realtek 9210 family set global write-protection flag
>> + * for any OPAL locking range making device unusable
>> + * Reported-by: Milan Broz <gmazyland@gmail.com>
>> + */
>> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0xffff,
>> +		"Realtek",
>> +		"",
>> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>> +		US_FL_IGNORE_OPAL),
> 
> This entry is not in the right position.  The file is supposed to be
> sorted by vendor ID, then product ID.

Yes, despite I checked it at least three times and I did not spot it :-)))

Thanks,
Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d958a609-e3b5-4ff8-a32f-98419d1ea8f2%40gmail.com.
