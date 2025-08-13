Return-Path: <usb-storage+bncBD64ZMV5YYBRBGVV6LCAMGQEN74N4XY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id B132DB24B64
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:01:00 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4b06908ccacsf159573301cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 07:01:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755093659; cv=pass;
        d=google.com; s=arc-20240605;
        b=U1NUwQjR15wDXJ4OJDtVtI1rbf3E6o0ZCywbS10CuYRPInWCtrmRea6urWGBC2brgV
         UjkT/tAbG72gW7hR7riji6/T8UuMBAxiToWZOeBqCojajXESoJ9zhdwqhHCGZcLuFybG
         Wnicpa3VtRWf0VzpzH2oXMQR2KqLKQD7I/1RdjjeBtY7XKAfcZcv0ELqn+91SB5hdyOr
         6OSfBGw+Z8SZ4m0s5+cYcgeJipgUHvRNLcppI2tOYQuNHm2QFGSMiTrSFz1YJlsek5ml
         rHXyoPjx6qP9PCxbIomFdJxktILd4wcWj+awVAqcpE75W1wiCXnP/xsr1B56fwD8d0Az
         z8Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WukcjeBEXuZYf3PpYusTFhfEs0E7GTjwmG2/XsZ2Fng=;
        fh=sz5h7Pqokgugzanl6RhbB95K1Tr3sk2yIlvde2264/8=;
        b=JRQZ11TJo584qNimMOQqtXk4paXWg4seb2mQEcFEu1UUh63OvaUORPCvFb457MsLS1
         7/iXqJ3k9jHj+wBavEMmfs2/cSDVMs8G3R6d2hhOSPlwkbN3j3/8qt5hNn8AllItVmW/
         fPS+OApETmzHac2B4nFMhrO+mpN1PkpmBYyhnWO4VIe8qyJJcjj7z9tdHmuiV0814jtl
         DdXtd07PdIe0LKqtDFQwlzP5q4osPGTPYoBZC4FMOGQUGXHz6qshkUuXDT8AEdCHDxPl
         V+2f6h2ggPQZczopVebwYLETXmZ48q000j7QyQz9Gs2FJ34u6y/RkMlTWxK+MRXtVu/8
         1Pwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=qiD7NBi+;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755093659; x=1755698459; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WukcjeBEXuZYf3PpYusTFhfEs0E7GTjwmG2/XsZ2Fng=;
        b=A9Qvw+TPTWQ1I3Nc97y0JiIwr3x1nqkO0ndnoKfIUmL4MbRNudE0mhiw5cw5qouUFE
         T48E0cV3jpzlwNF6LFoTbOd9WBbqvsT5pRrVq2T6qkfaxG3s7QYjVgRHuI4Cp/MPqSXA
         6EnjPPtOXq4eZLCOyCqfZhu9e/msWrCRVTjCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755093659; x=1755698459;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WukcjeBEXuZYf3PpYusTFhfEs0E7GTjwmG2/XsZ2Fng=;
        b=uGK4QpQt7rJ51fvol1JTYJAGZHVPTXZFswm4eFv1yIW4hxSjjFqYm9sOneug2G9f5a
         L8QOdGjGJ/jXJSWrYvHEGP7ckHIZXGSKyi1bL8jgGiRwsV4cd82ofDHLZ5od0EqfaMFd
         wS8e+ZI0pFker8mwsuPVAX/DHIekPYBj79wA3/sLl+pyzyr45yghoutaWTzWfUvaJjbG
         exn8bpm3pHVjSidHCbdXm3pg+C+CQNmi1CWdUV4PpbpNZpKW0tTsrFNL49iuv+xZvMJ9
         tsLnQj+AmxHpwaPOHMO+QCYRqypDnuTwlKcUt33YDPvCbrYGOZ/DhLJ4rSYh1qs7thsy
         mTUg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWw80exOy2eQpuv6VW1GyC21owgixbiPVOKZmATavQdUDJrvrxgTdKpq9QAg1lEsE3D3WsPoA==@lfdr.de
X-Gm-Message-State: AOJu0YyOzkehiMThEbx4j2k/IQFM8cAZBd8QM/FJ3QQUNofyO4eELJrf
	gs4I4+n4fgnqwh13uC0hvByh/m2oR9AAChIAwPSgLtzGOoMUievC1beirW8YlosMzRQ=
X-Google-Smtp-Source: AGHT+IHzYfZe/d4TdVB2ZwM7JRA3M6Bm+BMJGObvP3tqQpu6LuHpK3CE7rYpPOCbVcy9DnbmKqgD6A==
X-Received: by 2002:a05:622a:1341:b0:4ab:41a7:852 with SMTP id d75a77b69052e-4b0fc76969fmr43762211cf.26.1755093658966;
        Wed, 13 Aug 2025 07:00:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZczhmGP4NVlP29NrRuGSgJC0IQ6U/ce5EHLc92X29b5Bw==
Received: by 2002:ac8:59c8:0:b0:4b0:9c1e:fca1 with SMTP id d75a77b69052e-4b0a045a211ls91279311cf.0.-pod-prod-01-us;
 Wed, 13 Aug 2025 07:00:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUFGdRDogGq2rAyyyXycZizTwI8qoAGYUY0c0iNPiIqSdwxyehLIa5+Dlx+eioqfhZmIf93yESbExf8rw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:14f:b0:4b0:f8ee:30cb with SMTP id d75a77b69052e-4b0fc7603a6mr42874351cf.22.1755093650617;
        Wed, 13 Aug 2025 07:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755093650; cv=none;
        d=google.com; s=arc-20240605;
        b=F17Eu38Td+m3xoBMld3fJkpAKBvyJaD2b+a7BwZMfcn2NmlvRLcyYHd1ul8r9v78zI
         GUbnMdVBSIanqo86N6h4gSlUlbdSrM+MRwNiiKT8VSZR8JO+iZY1GPskoPVQAKIgLavx
         NVuPXulM47rHLkeL93zs8IftdhpGc0nqH6f+ZcycsAbdALexCjaX6caxDK0egbiHRxpk
         mxjSNGF/WmIcDSSsNXJEJbahDfhuUE9xEbw5SQF+AbsRUJUHdv86T2f61BXJiffB560c
         5wvD4pax5k5ITI8j+pcdkE4AzQF+F4BLm7ybSSvbMvuVhNJJ5QyfwNalyw9VgEeOBLVS
         0aCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Lc31v2yJfn5lC70LsWzHpGyS8F15AJd43KPnoZNTig0=;
        fh=r6MTbcLxtcK0mN4c5O2De2TNrc9TF8H+GCO7K4Q3aQc=;
        b=h5Oj7d2KdARkmq2cmZfd3kAXka3y0GMo4XH2NKuMHHHzIJCsnWPpXYiVcMZGkxSXKj
         D3ZqQ9Bh71r1c3kG0HeDSip+j5C0zWgmvgXY6+/6CIrkq4Yqn7bkbaGDTSYv1ORhMSic
         Wi0ENwnhRkPhuhpdyWYQHNxFLwuWj9npW4DjAv2uEPuK6NKbW2eQhY5zgdEC+yCJ4RTB
         7mtcCQimumVvl5WeXzr8Dlq0YAxruQSaLm8s2xjIlNoTvziR6uizfqUp7YrxToG9GUue
         AQPgg3JpOC4NqAwjFcBRQzftfkD24H14Cos8qurLptqAtmRy49nAHf2l6TScX3FmjTDX
         FFpw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=qiD7NBi+;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4b00f358d5dsor230036471cf.7.2025.08.13.07.00.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 07:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUfrFS7N2qQw9dSICcovRKXGPQripdHbmqUlGX8nfvLqo5MmCBzgwNvDpJDCux4qsBopJruw7oXcq0X0Q==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncv8QXp96EIUMCrgEjkMMfxnlrF2wBFaa3ZooEa3HoO4dlxH9ea8FUlM97aTjUb
	mnJoYSFQUvrl93+xoJxA6YDiXjxuiZTW2EyRkU0MMzDFvkiVpQd4AbrK0lsw/pgCbZShvS92sF4
	rkXb9txbDzsa6TqhDhS9figC2O1EV11vx6C9n9lqOPQElkcEyZbenRSfPgQvZCCiRNxmTuNWpLm
	1N9iJCO/WU4SblXBgO4SuDJF7v00jdBmYmTBxW6wB3hnTILXIYTjX/J8H+iavrhpNeUIo5orNAP
	mjBeuF2l/1eDbheWtaqmwNY74K6AEiyapaXb8EZs/mk0RNwUXNV/wOCzrCu5aWvkz0zwjsx13Lu
	oQfxrjSz5Y6n2OEfLcXFFeau3nMOZLxQ4RE+RI7te
X-Received: by 2002:a05:622a:4818:b0:4b0:be3b:d40 with SMTP id d75a77b69052e-4b0fc86fa65mr41526931cf.40.1755093648934;
        Wed, 13 Aug 2025 07:00:48 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b1080bbf35sm933301cf.15.2025.08.13.07.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 07:00:48 -0700 (PDT)
Date: Wed, 13 Aug 2025 10:00:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	wwang <wei_wang@realsil.com.cn>, stable@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@suse.de>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 3/3] usb: storage: realtek_cr: Use correct
 byte order for bcs->Residue
Message-ID: <5c190936-7c9a-4577-87c2-f79975725787@rowland.harvard.edu>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
 <20250813101249.158270-6-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250813101249.158270-6-thorsten.blum@linux.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=qiD7NBi+;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Wed, Aug 13, 2025 at 12:12:51PM +0200, Thorsten Blum wrote:
> Since 'bcs->Residue' has the data type '__le32', we must convert it to
> the correct byte order of the CPU using this driver when assigning it to
> the local variable 'residue'.
> 
> Cc: stable@vger.kernel.org
> Fixes: 50a6cb932d5c ("USB: usb_storage: add ums-realtek driver")
> Suggested-by: Alan Stern <stern@rowland.harvard.edu>
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 8a4d7c0f2662..758258a569a6 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -253,7 +253,7 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
>  		return USB_STOR_TRANSPORT_ERROR;
>  	}
>  
> -	residue = bcs->Residue;
> +	residue = le32_to_cpu(bcs->Residue);
>  	if (bcs->Tag != us->tag)
>  		return USB_STOR_TRANSPORT_ERROR;
>  

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5c190936-7c9a-4577-87c2-f79975725787%40rowland.harvard.edu.
