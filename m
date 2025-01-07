Return-Path: <usb-storage+bncBDJNPU5KREFBBEXY6O5QMGQEBZN3RMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id DF138A03BBE
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:04:03 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5f368647a20sf10915260eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:04:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736244242; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZFFXdF3THv42a4ya39ieEFbwt6TPujoKfiCklx7leqcIqCzqxNqntq32EDHiSjr0kv
         BaAcI3KPZLp+mmORasxtSdjGKx1BVLXihSihhAZ158rmOYrWc4ADPol5ap3+nifF001i
         tzrkkMY3k2mYIc9HzOyQS5hz7bY22OVM2m+9xIvSLe08XgixNd77+6RRbWvOHSpJ0sRb
         qpxhgJtxe0MB7LIHcYtTG9fHozj7TiQFgB1Cdnjy0APCmT8Dbu/OiTCQBnexn1HRjLQG
         tlOxBVAIFMS2AWl3EZtX06IS7L/QvoPRJPHhgemjJMHPpXZjtZj89AOopj0+G6bNxRAK
         9jTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=Q5hQ6SA9JsI8C75n5Dx2HQiKbBWrTDeqUS5JEtBDpr0=;
        fh=Q7HL1NAI0fAd14nY++TA/O4+Xn7pmDNzVYgRuVA8KJk=;
        b=LWpOXf4vXLLlVhVSj3cmQWKITGcGxsNme/q9qt9Lb4aD1zTVtx+ucwH6FXjCCPQQrq
         E5ST9ljYVv+wpPbNlAuCJk6OIeFd2wVk5IPaKTrwpaUmqGqGd7DDhsPov3FoG7Z04Mp+
         Pn1ANqrMZhmdzmiGoQ9u5QKe/uPn7gX/ggkXrKhEUGel0BBMDZqTNcXyn8B6XOjW6exZ
         HBqu7waibBM8pzRx3TzQ/gsYPJ0yUXi09fwisnVPVOsiOU3Er/1rmX+fDWfClh44otl1
         0TC1kZgf9qXAh573i42WpGrZ5Y5MFSj34OfDqghmeESEUESGHqz8/1xENBlBRccVUNEU
         lsrQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PA7cDLky;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736244242; x=1736849042; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5hQ6SA9JsI8C75n5Dx2HQiKbBWrTDeqUS5JEtBDpr0=;
        b=kW+tjLiIN35ydha0C/bYj7VGQCW2hNx32sp8mCuAVGNUR/pCqh5tx+EUIQrovkhPWC
         ULS/YsTaX5lZr/K1uSkyw+bx9X/R7djpOCc9Zu8wsx/yL3ur8jUCIPP01jSB2XY68Ru4
         UmKt7TG9AcwE0kGkbmLWNOtZg2qlvC6b//PqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736244242; x=1736849042;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5hQ6SA9JsI8C75n5Dx2HQiKbBWrTDeqUS5JEtBDpr0=;
        b=SHVYfWzvynsB7EijdRgrCqiUMVYHUVMW35FAY9baimm5OT0ogIpoIeUexSZwwwpz0Q
         poctq3nNLL7D2mYfUDyr42F//ZfGp4LqWuhxCDv8E76eNOHvP/U5PkN+HgPpTdf9K8OD
         l+PKWLxDPt8ciwWhO+tXDumLscGvkrvUACTNYILM0gc9l7cdpmC4CtLszdmwUkWNdpp/
         VZDroWe2kQaTH6ycIvBpuZ5ecMVdmQV0uXgUDV2hDSWm9pukaLj3gSZMZqMRl2Qjlgpe
         02soOcqeSMPZUKSJVPCfQYPmwNHjUpUp4BzHtQj4fRMCDBgmH94JMAs0nP9ib/vNUy+T
         K+WA==
X-Forwarded-Encrypted: i=2; AJvYcCVldun3bCHVshrjgOMpuv7/dpIPTSWSBOtPV3IE7yfbDV/z6ffHVecIJcKN9LaRIFUUxpUwtg==@lfdr.de
X-Gm-Message-State: AOJu0YztSFk0/Gg/jzNgHgJaSeFhf8QYtqe+8c8Y/W9rEWjg6yi57EUM
	y6FxYf0jLYsN1tvjVj3Us8ZzVq5CGhNY0dGkiiAoWk9SWHXRaHDpdCv5lHxu5jU=
X-Google-Smtp-Source: AGHT+IFPnKGJd32FhDZV0MU4Qi6HLSkJkVDOtTJFvslR2h7E03jda7LWqO7jS/VdenwjU1o2y3dAjQ==
X-Received: by 2002:a05:6820:4c0c:b0:5f2:c5e0:453a with SMTP id 006d021491bc7-5f62e7ac06cmr34509626eaf.8.1736244242444;
        Tue, 07 Jan 2025 02:04:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:de93:0:b0:5f2:afdb:e681 with SMTP id 006d021491bc7-5f4d80b6babls2518368eaf.2.-pod-prod-05-us;
 Tue, 07 Jan 2025 02:04:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV2fNd2NWGD0M/VMfwsX6elRZGNAdk/9i0woVsWRRlokZ9HbyW6HD7Garsly5Babg0amsXqhws6+Hs/xg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:dc2:b0:718:105b:1185 with SMTP id 46e09a7af769-720ff6f7d37mr33620530a34.14.1736244241430;
        Tue, 07 Jan 2025 02:04:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736244241; cv=none;
        d=google.com; s=arc-20240605;
        b=JVoptmZxUNvpHt3ExXTzqRHQ2nik03rotGNdjxX8DVE3Ot6MvEJ9nyke/lH/JDJMnd
         YphPZhVqoBpuoH+hBXlyAP4SmsD1FySMW/akyEKEJsW6h18WM++4QqEZM//5xlxSZhHL
         NiVnsUEcKdfg5IWKIsjozRLpL/U2WomJb3w0p9Er+JSCt0jNtJtDA7hfe6otTifqbRrM
         mynildT1u8Jm2URqFwD09F+ObSyXsrzN+7MAOVoViwrYc+2L7f7OdKCh28wCY6J967nu
         rsEDan8lIc4n4oyiNjuE5Y1a4h+7ikBq0Bxbu7MG/kb5CqQY/3HKE5s6aSDnj5DfK6A0
         Y4Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=vJHmW27rYOPdqfqrMno1We2nyjzZF5RM86uGIWVVK+s=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=kLtSPRpIXEHrQXmOK4ScTWLxCvSyQuDjae+2ky8sRXXGn9AfjvbJzs9SCmc/ff4T80
         rq3ZrBCIrUw/ScX7qwhA3khCdARFz8p0VF9Lsan0TF0wq+4kiKNkTNfMhFgP2jhrYLQC
         yHzHuahxD/QqImjGagFnt4NhCO2pMfv92l4GYRvqGAEWe1UyGI7ND4R+L6fKXm6cT/Mo
         up83cuhiuAKHYGTmEX0WrwZvnfpGBWTBQCrODghUcfb9vU4vqVUbyBkmQVJ6oHw/+OiS
         7fbzBUx2KoMG7t4a+8BycER1Op3VJfcWHjf/Wla5NYo5kUY4UiYritj33lDLVNMMPgwT
         Znqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PA7cDLky;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-71fc99dddfesi23601718a34.150.2025.01.07.02.04.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:04:01 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2332C5C5DFE;
	Tue,  7 Jan 2025 10:03:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B98D5C4CED6;
	Tue,  7 Jan 2025 10:03:59 +0000 (UTC)
Message-ID: <a3c969a5-276b-4e14-8115-765991c560ba@kernel.org>
Date: Tue, 7 Jan 2025 19:03:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 1/8] block: fix docs for freezing of queue
 limits updates
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-2-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PA7cDLky;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 1/7/25 15:30, Christoph Hellwig wrote:
> queue_limits_commit_update is the function that needs to operate on a
> frozen queue, not queue_limits_start_update.  Update the kerneldoc
> comments to reflect that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

With this comment fixed as Nilay suggested, feel free to add:

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a3c969a5-276b-4e14-8115-765991c560ba%40kernel.org.
