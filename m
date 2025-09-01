Return-Path: <usb-storage+bncBCTPRFE7TUKRBZNJ2XCQMGQEQVIN46A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id CE561B3DBFE
	for <lists+usb-storage@lfdr.de>; Mon,  1 Sep 2025 10:10:14 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-45b74ec7cd0sf24501995e9.2
        for <lists+usb-storage@lfdr.de>; Mon, 01 Sep 2025 01:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756714214; cv=pass;
        d=google.com; s=arc-20240605;
        b=E/H5wYHyTgFBhqvwzzYCVo0yelz73sQV3q+rnO9Oxzoi6VumPiitObqbrONynZKkjF
         cDUA8nbqSHbne3kIJEyC80y6UtWyZyxuPo7/Ra2MmXehEoo3BYavmlX0GU8H7ZKhbRDy
         c4bsnHcvqu1brRf6ybr+7sR0EoyJXBSfHOuvdJyI60KYrvbK1Pr/73ulOg1wZjOIu15z
         K6BxTqoJ75w1AJo4AOvZiATcPkF9u5i4lAX7EhmajScEQCxhHgGzBUzuT/DgHQ45VMHm
         XfX+3MpAk4ZwFbyUT1lhGKBUh6/ZOna4tXhEguKCynvTCVPTwFiX9f0Pi7XeFpPlJ/Xp
         Lqcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=1oLYuIiC1mLUr9/TYrXnansmGMZHZJ/osmVSKZY1STA=;
        fh=KYKhrW1MxrhXYcdHPfph49H1DCYRK/X5pVay+BHYTYE=;
        b=JHcYyHStQ6G3QYqAgkbfS6KhgwcK1bLCdWLahQPv3qfYGnPT2bcj36PxIeIVfhYzqZ
         ieAzTs8ivTqFd4id6PMc/uMD4R1JuNTilc/uDIgEHNHcEJ+nUbwaawLyocd7l7wGPUoy
         cOgfbNy1M4Kl2N6BeO0tiuoLMbN+AVN+ARkST54y+To/rqgtK0xFgm14U95tAoD6x1ow
         rY1fewJOSsYx9X62OAYu7EK6Wbr6ZCy5C3VU2dIZdeXC46xCU5ebipqgRBWt8fkgv8va
         s3+91EYO2J8XqF7Eir7dS8FCV8D1qH8faIILlnAa+1dDu94ifVTFO/7fzDd5bmuzosHo
         Wc0A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QMoxOxuc;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756714214; x=1757319014; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1oLYuIiC1mLUr9/TYrXnansmGMZHZJ/osmVSKZY1STA=;
        b=ZqbJSKJ7vb4sdJqdFSL3H3gCJLcXadrHmKZ/nhxZKqKkT1YOPDBKCwxJG+vuH37rbx
         TmUPzZsNcFzCjF6J8WrkI8kSlqRmkLd/RK0ztHyYyCqv2scHHJ4mzgPkTLHm3ujw8pF2
         UwIGUHbo73T2ywH4hX6LaDg9y/w9+YRYIoY/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756714214; x=1757319014;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1oLYuIiC1mLUr9/TYrXnansmGMZHZJ/osmVSKZY1STA=;
        b=ux/ZzkdQNqE7bPh4KKmzA/G1w/U3r5SgWJ7pOelf8NSb0R/6iCkmPSBp+zN/ntDZRy
         XWy4wOeEMbb4Bf0WGqLEPSMXt0VsdtMiLKHg4O9ZtGrsOhvU0R0TTFW+t1t7G0Zos/m4
         1BUf6DknmCI8MliSGXtIFd2Tyjva/4K404GpjjnjQxePR41pDqs+avi4aU6Ga3WL4WkS
         XZtMje1FItej5QUw3Xdv4vG3EdU7Gwc5qRTr/AJzVH98Ib/zGZQICRGPX5BYuKGo+Dpd
         PRs41i4tjRZ6v4Vm+fkM44dG8uamrNvckI61GEfV8K26TKvTEdisAR/K9ysPBRzLD+jp
         vtoA==
X-Forwarded-Encrypted: i=2; AJvYcCVLk3SqG/u2P0Cluq0eksicUM72COTi2/tMG0HQwqHtS49WKcmDuf74cxTNmpQdOLZ8SC2ZJQ==@lfdr.de
X-Gm-Message-State: AOJu0YxARc+0cYc1nZBn6iHaex7FhDn1SggXinOkIWuoSKq8oCX2x2sG
	RHf78OopTyzQYwuSinDAu2SWdvfPzB9qQLrAZBiuBpgMD7KMrmhfGnbUxMFlbPINE0o=
X-Google-Smtp-Source: AGHT+IGDUim6EHCRlmstt0C3fb1UsBSFBk9H4fmtaPcEDNQd1WNJxHPrMpt+fJp4QJWRVztKgmZKgA==
X-Received: by 2002:a05:600c:4747:b0:45b:8f11:8de0 with SMTP id 5b1f17b1804b1-45b8f118f42mr9935505e9.5.1756714213809;
        Mon, 01 Sep 2025 01:10:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfQy8jvKaIgjF+AnrFoX7AvYYFNFtcMQNN+wRGbzXUYtA==
Received: by 2002:a05:600c:3b8b:b0:458:bc96:3b4d with SMTP id
 5b1f17b1804b1-45b78776de6ls20409435e9.0.-pod-prod-01-eu; Mon, 01 Sep 2025
 01:10:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCriXCIjwiA7lmTEJdlh1wdM1ukgNDOW4fJT00x5riG7QrpovTOz37DMOCr1jtOOMlvCyCJRVg7rsHng==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:4fcd:b0:456:fc1:c26d with SMTP id 5b1f17b1804b1-45b8553f17amr50082445e9.2.1756714210761;
        Mon, 01 Sep 2025 01:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756714210; cv=none;
        d=google.com; s=arc-20240605;
        b=Qnd0qUOtqwos99dS8vZ/TLwbTrm+hekfVLz0XCEeO5IE92i+t3zUwbHnzqeOcjSpP0
         g6/7gpsJm9xJg69VHBbOPVTWv/kpHTw5KSQ3wNkFqbRfT2/MGdZIwfE+4Jx5J/Fk6Tko
         OwPlEB7WEqCIzkThtg+hzTdS0MLkzRrKLMv7z05wRAWwjoHF0Glgxr4dFApIX+D7/L56
         oSwkyUD+9W04Pv4sonjT+/HsN6xK6CpWcCxuIlGnr9L2SPt3cDpJbf4kEbpq94a3o9Qg
         aeSzRe1Ts+Ovos9QY63HIAiJLQIWkJyqyymG76XAeK3ZsZL/v8+izG+6UnawU41CAmnQ
         dHhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ld30nTWYMhblb7gZbUBZiYF7nWKNCb3Ye8OVN8o1oUM=;
        fh=hw9xlcJi5XCiN1gm0kz3EbzsFOnyrg6fnnN7sEy+qFU=;
        b=hDOLrTWxiXVtCU0QuSyJU238FRTygdgoMfvZSPO24IUHZjPLMBPwC8k1AtTB3ndR4s
         Fz6UundGJOhXIgZWf0bXL2m0e4cPrS6AQ8fqjGzdomjgers7wnXgqE+H5gapp3RhP3Ul
         FVWtOaw0H9LzLYVont2MaAni77Y9LgdPk+ZP6o6r5m+AbrnrxckiL9z65IKHYROswVS6
         ryRsj8MB3EpnyE9RI5uX0vMNFTvbwUntgfUAmmNEtkiZYimLAN5thtTcKHkfugNNiVrz
         mLoH/KBfFJ7WDftgTnBzY5QV/QHvpO9v2HyWRN9kWjkVo/XITMYNHR53s2CHt4/rmGTL
         2iaA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QMoxOxuc;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-45b876bde08sor7119155e9.10.2025.09.01.01.10.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 01 Sep 2025 01:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXHHEGMRp6Q/16V9NBlWS7f4qwEd+kXCQqRAiHhClFrVKpAhRXJv8pNopuw0LJbBEbxjG6XFoPID8y5Ng==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct8eqO2S0y58tTZ4TKFYBYGOK7W84pKGQ5aRprRGyVK4pgSt4I8jD/PEiCfc28
	+Dicvgzs+z2IjDR/GZDwAtsqBlGz3LCbtznynzIKlu4cjlFrdKq6IBVh5vdv1xiI/X0nx3zUsk7
	xJATQop0LjLyoXdETKjFG1d5vq9zgYH7EEQTSi3rWLCQ9ajSfKNVShClsAFd2GYYVxm6EBTSfdX
	hpkPlkRB923W55xnFFhrPwcsf1b7PYYPsTDrYxEBnErL0qHTuv2SJSrdhHbegO98ewztckavXLu
	wnV0ekojROMVo5jOrqPVGHDwXNh4QK3BA4MwbtRIHdALJGc+MpplMVPNW4Bh5vwnB7zBeNEedTd
	YfDAF++1shFg2AakbzTGjyBzNFugLSrKYigl2oWOD8XI4+lZU6SQCUx06d8uk+RsHLcI2RmiVNs
	48FR+0DuL9EXsl
X-Received: by 2002:a05:600c:350a:b0:45b:8b21:ea9c with SMTP id 5b1f17b1804b1-45b8b21edc2mr34394895e9.36.1756714210317;
        Mon, 01 Sep 2025 01:10:10 -0700 (PDT)
Received: from ?IPV6:2a02:3033:26c:df97:bc62:c66c:7bc3:9ad5? ([2a02:3033:26c:df97:bc62:c66c:7bc3:9ad5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e7fec07sm142484965e9.10.2025.09.01.01.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 01:10:10 -0700 (PDT)
Message-ID: <86eeee11-38c1-4754-b72f-7606b137d426@suse.com>
Date: Mon, 1 Sep 2025 10:10:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v1] usb: storage: sddr09: move write buffers
 into info struct
To: Alex Tran <alex.t.tran@gmail.com>, stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
References: <20250831192247.1120619-1-alex.t.tran@gmail.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20250831192247.1120619-1-alex.t.tran@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=QMoxOxuc;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=pass header.i=@lists.one-eyed-alien.net
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

Hi,

On 8/31/25 21:22, Alex Tran wrote:
> +static int sddr09_init_card_buffers(struct us_data *us)
> +{
> +	struct sddr09_card_info *info = (struct sddr09_card_info *)us->extra;
> +	unsigned int pagelen, blocklen, len;
> +
> +	/*
> +	 * blockbuffer is used for reading in the old data, overwriting
> +	 * with the new data, and performing ECC calculations
> +	 */
> +	pagelen = (1 << info->pageshift) + (1 << CONTROL_SHIFT);
> +	blocklen = (pagelen << info->blockshift);
> +	info->blockbuffer = kmalloc(blocklen, GFP_NOIO);

there is no reason for GFP_NOIO under these circumstances. Please
use GFP_KERNEL.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/86eeee11-38c1-4754-b72f-7606b137d426%40suse.com.
