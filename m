Return-Path: <usb-storage+bncBCTPRFE7TUKRBQPXXOZAMGQEEX2ZM5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 988108CCE17
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 10:18:10 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-574b5ae605dsf1232808a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 01:18:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716452290; cv=pass;
        d=google.com; s=arc-20160816;
        b=c9MSXGmCmtO2emEnqb63VCRLapsT/I1PcSRJ/xHYyx0k0kCfOGJjcLgUnkBQRDatgJ
         +cZZRDWwQA9zAyLT/aOhb83w8YqMcff/nWuxRGxvt6GE4+ovS5sLdArw2s6+CIkkNRUm
         4v2FssLp4sCGfgIHErblvcnlcWrDooBLiiMtX696wBjfjP767nF0FfR4K3nv3mYrRnZR
         bIp07Ea56AbJrTPYOaX5KBity6fhjC2iPBm/KY84eHBU0RiTXNA+4xsTbwlrFLyIPoW/
         ENyhrtEnBKza0p2Lt40S0NYXyRDJRgcJx2qwVw+0h8c6FDktgpXbt5s0Hf3uhYE67gVQ
         WWZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=zBGEWfH0diR9orm0+GmEy2m2gPn7waotNVCyZQWi61Q=;
        fh=V2Pylk1dneYI74q1cbn+ma2LfV7Xie5/dgd+S6DwfKk=;
        b=ejGz00GfP1ehH1Lla4ohc0MruxhsFEnGE/G6/4mAEQC2RUBes+rmHlu4qiGkcfVpp7
         e+lOOeyj3REZhxZY682d7hUKVl76xh4dA97gv8Xz8LfAEB8u6afZRsbxA9QxQYMdgQm3
         2cq3ci9RhCbmmH+1cbIuMh1qMS1+sTK18xMSgBZbXtJMV1oMLT1UL2IWZW8bTv+7w3EE
         4eN4PyqUsT+dkRWisdNTUcbbtUZ5+3bh7oC4vzMHZ6brqjtu1NApLSGhZhTyvughm0Ng
         8pHqa0SRTp3LKjBIlPJuonpi6w6UCuTpiSqRXAsgJ2UBDR0e41qFxYbnOm12jvlPifNJ
         LlTw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DBYu6NrM;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716452290; x=1717057090; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zBGEWfH0diR9orm0+GmEy2m2gPn7waotNVCyZQWi61Q=;
        b=YmjYcMWkwANeIAiUBkC1aQ8ogo+shUHLoskZuz7vEWyD4wineY1pB8czX5cqktq6Xw
         bsTW+EbzqZr4gXl3U27T8AISXScQFNFiXUvjz9PICWvZq4J83eYPI8cAHnuLjWGDccHd
         xrTuV687DxTdWVAhvHxHpHX7yUfXlyBbnEGmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716452290; x=1717057090;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zBGEWfH0diR9orm0+GmEy2m2gPn7waotNVCyZQWi61Q=;
        b=tBXZGwz/u5Rr8NNbG9MQC1hjbpE4F4zcajoI4jr1RxNolM6h+ob+doXam+rBNH53Do
         MT06aY8QgoLLXHOhSAbNNi2xLLxjhxOZRw6r06XOuk0wFV336syfxydKvj1IJyz5mPH9
         MwlLe/rmlJOODh2UTOrjmjryGbBF/ykgD6JERZBiHomZ207Ri3SwyYvwih0UQp4CYtkF
         RufvjSkygTqchFBA37Xexc799hOF0yMI/ElAWEtvpRLUBkCTh2+8eeh0OKYjkYJ1wSJv
         63MLb71iRqrq0Wcv7Si3P6iABSJIpl4pI4xx2A1D4b409MKI42k6jUWfyvzZ6JpujPQK
         y0Bg==
X-Forwarded-Encrypted: i=2; AJvYcCWDuH62op+3UCQ06FKIJbog44n+2P4vyZvmgY8Bkpb2sAIvTe9W8xONE/6OYMEu02kbbm7cufBIFT47h2tEZR18UiykjKBnbkGc
X-Gm-Message-State: AOJu0YxCKQZqJ7VC3fSxHrslOxNMQdZ0j2nwBDqxpSu950U6v1HJT8DE
	5JA1/ETKdL+V/Q3ZWobr9PGwwn9vaQWjFy+4YC3ZbZHb0wwqs8qC7Qewf9qtFbc=
X-Google-Smtp-Source: AGHT+IErFEtWHF7dRHqoGGvlgB1XsS6o6/bxNIBpWMloMBdiXUXzPvWMRzxxdzPeeJp2uVl9PfHXXQ==
X-Received: by 2002:a50:bb03:0:b0:56e:2b31:b111 with SMTP id 4fb4d7f45d1cf-57832a0d9d1mr2568156a12.7.1716452289924;
        Thu, 23 May 2024 01:18:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4028:b0:578:2803:753f with SMTP id
 4fb4d7f45d1cf-57828037605ls387378a12.2.-pod-prod-04-eu; Thu, 23 May 2024
 01:18:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUZYZRJTbT5JZ0Q2DvSoTzhyAmpYGeWnF818FRkp9sxS6RKwApob6cr7Ve6sas2T+uzKE1a60tULXfh/CTxpJS5sqCgc9scBZesd9IGFUwAVOIXxKk=
X-Received: by 2002:a17:906:7c4b:b0:a55:b272:ea02 with SMTP id a640c23a62f3a-a622819192fmr223640566b.75.1716452287757;
        Thu, 23 May 2024 01:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716452287; cv=none;
        d=google.com; s=arc-20160816;
        b=GwoweYIdcEC/zqrhOazoKe6hE+x0XdG8zTEIlo85NSTGxD/wh/czsPTe2H+Wchj2Eq
         7ZylnEXvgxwwAJ3ugxbKx+Ba8Us34wbX5CPhP74Z2NdI7pSeSb9dl/RjDt/Rcdh/jUPb
         EWGGSKEefbUyPcAfHaxdzIsMFELoONx+P3LxVaqFV2MMTuXUs7+XoQQGSSQyHUGoPfGv
         rloB0rA1vNoBDUigaHXnJ79iMkrGAAFXQ3clWS05rI8PO485G0lbs2eHsf8ay6xQPEGM
         aNofuNodpEhA0NDb5ZuVYYoyr/Hoac2DtnETtLcKUddKrD1yyl97B4ewcqVtEkpgztAc
         wTQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=21lU/wOObW9nHRj3Ls7LD5UYrlZfeNZ8c3JM7X95WyY=;
        fh=QmqvCCIa4T0+enBFhWvAVCacEX8fyHnMnGarIUuIS4k=;
        b=fYgAbRlu+aSR25uqUuKvLrRzy9lK2V8y1t1jqIKa4+A1CSwqXDmqWtgrYeAseFgQuK
         Tb+lGlcIt5KU/1tBB7EJozrCjOpNWTsF1cdTQVpWoWx1OVFUW7PZz5mPM0uel/zrnnVv
         l7gozwYIeyuJXaybm4jLQWAPHl6CGg4SxEXUuLzsBiih2fWubPRqxODqOXJt+idGaTo1
         W9ctbKKvIeTrj0/u1LZ3oq/VB1UY+rVi+E45CYWiWFEfOVDUzBN0EIm9RSA86cdFASB2
         bk6RlTovFRV4uJ86QqWxJURm/zHSdBytrguUtZOIJsbJ0P8zdq/rTO53Kz8f0f5mdubj
         JnUA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DBYu6NrM;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-a5a179c94a4sor846061266b.14.2024.05.23.01.18.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 01:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUJqwY5JVMvX3bXuO47AtLEzARyvMecKCyrPrDVy+8zDIAu8dCftAJDEWqMQEbgK2VeV+iC0wOfr1Ta5hOAZat3gudZOsbANuu7rLVF7cQKcksd+kY=
X-Received: by 2002:a05:6402:35c2:b0:578:341f:86b8 with SMTP id 4fb4d7f45d1cf-578341f8744mr2826677a12.38.1716452287314;
        Thu, 23 May 2024 01:18:07 -0700 (PDT)
Received: from ?IPV6:2001:a61:139b:bf01:e8eb:4d8f:8770:df82? ([2001:a61:139b:bf01:e8eb:4d8f:8770:df82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5784898d04bsm451835a12.61.2024.05.23.01.18.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 01:18:07 -0700 (PDT)
Message-ID: <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
Date: Thu, 23 May 2024 10:18:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
To: Shichao Lai <shichaorai@gmail.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>,
 yue sun <samsun1006219@gmail.com>
References: <20240523072242.787164-1-shichaorai@gmail.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240523072242.787164-1-shichaorai@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=DBYu6NrM;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
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

On 23.05.24 09:22, Shichao Lai wrote:

Hi,

> Since uzonesize may be zero, so a judgement for non-zero is nessesary.
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
>   drivers/usb/storage/alauda.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..db075a8c03cb 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
>   	sg = NULL;
>   
>   	while (sectors > 0) {
> +		if (!uzonesize)
> +			return USB_STOR_TRANSPORT_ERROR;

May I point out that uzonesize does not change in this function?
There is no need to retest within the loop.

>   		unsigned int zone = lba / uzonesize; /* integer division */
>   		unsigned int lba_offset = lba - (zone * uzonesize);
>   		unsigned int pages;

Secondly, alauda_write_lba() has the same issue.
You also need to check in alauda_write_data().

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a218cac3-9d9d-4ac9-8ea3-0ea9822b2261%40suse.com.
