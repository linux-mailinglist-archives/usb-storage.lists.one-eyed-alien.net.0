Return-Path: <usb-storage+bncBDUNBGN3R4KRBNW5QO6AMGQEPD3OX7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 119ECA08D13
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:56:08 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d89a53fc46sf1918659a12.2
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:56:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736502967; cv=pass;
        d=google.com; s=arc-20240605;
        b=dKxEk9VwH2CN3OxTynGrk5s7CjbXF6zP3kQe+245mpHfX5KLTSayTrAvj59qi6cBiB
         OSSH5wy3AGM5pRTkzFOPoWIdol86EYU3x9puiv5CGDJXU8zc+4i9t6t5VV7ZO6B9UBRO
         0rrHl1754/1BSLvcoA34lDW8e9gQttzWuJMvH6k95oq1evpj6gkP5KaQDG+UsPyuTF2w
         4pRjbgn6ceL14i12Wvmxl3IxtfdYMiRN1cp70SKAYYuEeoWHlyyb1lsh0s5kGMEIc6D1
         y41HJqsx39taahihW5iQhqBQIn0kZ4ncIDv1mU5ubU2NPfIBTfeYidJnPkhyy8mZf07V
         cHhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5XwIeqfX2fVuvBsFegZpeSRDG4vHqmE02AKAyFy2Jrg=;
        fh=xiBitC9/47eJoDNn0buZAc+Tk3InSaTvh0R6r+BHwOw=;
        b=RKxlwc5JABOPs7XYHsc7UqL52KZ1ytdBLZLTZVetPWVBOpmO2hbrgidaKXgsmboHxG
         tGM0iSl7hkS7F+iXJQnFMBVvGBa8ZABOBSrIU14YM/OFUi66/lb/C3Lrdnt0vz+v51WS
         ZqsXdqd4GRC8p7EvYkJp4q3478fGEg4AeaD+kcL2lk63o5dl0dNLwUN/+aehu7XFw8Hy
         83aWONQHktc35NXHC32r6Ik/9ih3QLFmGYmDTdDnhkCJtX7LGOfSRPbOD+SsPGvLOSaI
         r3rQjUJy60j8b9RytcHI2hDER3RTj10xWF4XinG8/d5rAJKDzUZBI0EOKJWqPCfBtMEa
         N4/A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736502967; x=1737107767; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5XwIeqfX2fVuvBsFegZpeSRDG4vHqmE02AKAyFy2Jrg=;
        b=hROXEC5DGGw5I0LUUyDDVWygCJN3Nip1Q6jqaeDzgvQAusfivYEGiLAm2C3UGs2q1K
         Xz573OhYUkRMJsk0jIg9pZqTMfQvE6/9llF3dWvgHJ78ZWAfbCIMvaV8s1G01KXgR723
         dDXPBZVz6ChO8bE0C655HGrP6tFH65VoQm6w4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502967; x=1737107767;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5XwIeqfX2fVuvBsFegZpeSRDG4vHqmE02AKAyFy2Jrg=;
        b=CojV2Edky/URFq2m7ArbFIlAulTK8n9uBzBpD8IlmGFEUdGNh7bzZ6MgVsIPBalt3I
         BFIlY1t8lZwzIxkqsuKsD27eKi4RhUCWINNmsX1jBJZvUliPERfo0btBHLRlNijmrvAK
         Zcv+Vxo4UY49A+PpwDmDDZPKHzvUeu6zQl265F8K54a2REECFYIPZDS/EDUE0C69G2me
         EusenccG4nGaDrOziOxNd95gUFHWIZXIBeccqPJ3OgLV0wI2nttsO6gL+RTgGiTFgUul
         mbz/nEX3YvCBoi7xpXVo9oYhtb3/O0dmCdnwrdaRPPWt2oh2EILu/7cLHd/PtKXmNd2F
         mLDg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUrizMCV+tTXKNgxxOD7oVAanfG6Yufo9jHmw4rRhb+bpZEypiBXJlNEadpViw65fh/t4RPhQ==@lfdr.de
X-Gm-Message-State: AOJu0YyFjXvT4X++hnDSPOYHi0Ffiqdu+PtXkRSGBIQjcRNyPDQvEJoO
	jtB4t6TMmK33tWM+qID1eEB2kyHPLuFLuGNcMecwjNe+Yi8AeyUIAZwzOQYm/bs=
X-Google-Smtp-Source: AGHT+IFS5wm+jlqqaScl5PI8vDrRKvhODO9ycLxSjm1z94jl6P9tDFnHAYEi3mcJlajEP3+oU/bFkg==
X-Received: by 2002:a05:6402:42c1:b0:5d1:2677:b047 with SMTP id 4fb4d7f45d1cf-5d972e6e423mr10343469a12.28.1736502967402;
        Fri, 10 Jan 2025 01:56:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:d51a:0:b0:5d9:7c9f:1d95 with SMTP id 4fb4d7f45d1cf-5d9856b5793ls73629a12.2.-pod-prod-01-eu;
 Fri, 10 Jan 2025 01:56:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXIrpuiJ5wMLYnCs9933F2jBA0t/rXFQ/Ddk/gXnuPQ5zjgRNANJ+SLKbcVSsbsehQamh4UEXIGVn0ijA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:1c21:b0:aa6:acd6:b30d with SMTP id a640c23a62f3a-ab2abcac590mr842547666b.48.1736502965043;
        Fri, 10 Jan 2025 01:56:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736502965; cv=none;
        d=google.com; s=arc-20240605;
        b=VRmrvvtf5YnZycJji8OSp0+fJ0b62l0o7PGhkEHbc5z47epEJBNtstx1EHNIoJNnIq
         XaOL5Bfsu5H8OkOfgL8N8li99b95gbkm9iQiLg51M/0Oj7sWrN4A4Lbt1LP908uxYGoh
         sd5BJaJyD/dwxxpNJ1OR8s1xDM6HwvQyy2XR5hMPm3w1LDXWdK8tqG8E8YW4CPqnhr2X
         OmllZZUK7JmvO5gF1cM77Gk1HOSZNGU/eF1deYia+XShUpPdnmQRvGIis62fEcCP+a8l
         r/gbrjkFuQTo1cVCrc3sQwHLxppSlLiFMadS9fmRpVgEOvqwQWT73TlfEDNp3wanj7jY
         4bVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lBmlYAbRZpBSO1SA8djWioiDu4AX+1qy47FudLLk6j0=;
        fh=quH26clXjLpZXscCcKwr+AEN/ExB8C7cY90QRhK1I3I=;
        b=INSGh1+8Z0KsTsDDKqrQr+orqw7T3cWxxbtpHdY8If+PcFKcrMUnFIVhVV68x+lrGJ
         +6M9EiRDluqCoNsUQQXvGE7eehDFZxmMpQbtesSwusHEwfCdFp64wJQTw2tvY6285bWt
         a/0dvq7VHdctP38GaDzESZr18MhQ/5fRLQ8VftF1Q1pk3kY3nI3iREVzOsdb4f5vI8Lj
         Ty7brtlKLIwSEKdKdagIpWfj5Dlq4E88Ic69w6qjIoxwuYC8Jw1MRmTamMNht60Qdxsg
         3iYmiSgpG9KIfbX3CtrnrgZvphH1RStbWsbVaIWnkbSagpo8mFrA9Hl8xvxVKhWzVWh4
         MACw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-ab2c95e9331si200705366b.683.2025.01.10.01.56.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:56:05 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 32AEA68BFE; Fri, 10 Jan 2025 10:56:01 +0100 (CET)
Date: Fri, 10 Jan 2025 10:56:01 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
Message-ID: <20250110095601.GA11121@lst.de>
References: <20250110054726.1499538-1-hch@lst.de> <20250110054726.1499538-6-hch@lst.de> <e7177a33-aebd-4828-87b0-f790b4fb1306@oracle.com> <20250110091859.GA8373@lst.de> <68cd5371-f4ca-44c0-8ac7-c734da04f877@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <68cd5371-f4ca-44c0-8ac7-c734da04f877@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Fri, Jan 10, 2025 at 09:51:18AM +0000, John Garry wrote:
> ok, and that just comes down to the behavior of queue_var_store(), which 
> mimics sysfs_ops.store
>
> I will note that queue_var_store and queue_var_store64 differ in behaviour 
> here :(
>
>> ->store_limits uses
>> the simpler and harder to get wrong convention of returning 0 on
>> success.
>>
>
> understood, so any reason why not to change the rest (apart from being 
> busy)?

Not real urge.  The idea here was to get it right for the new one.
Changing the existing would be a lot of churn for a relatively small
improvement.  For me that's only worth it when touching the area anyway.
Which might or might not happen when trying to remove the sysfs_lock
around ->store.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110095601.GA11121%40lst.de.
