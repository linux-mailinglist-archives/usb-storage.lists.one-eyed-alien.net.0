Return-Path: <usb-storage+bncBDJNPU5KREFBBG5D7G5QMGQERBOY4JI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 55605A057FC
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:21:16 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-468f6f2f57asf213420861cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:21:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331675; cv=pass;
        d=google.com; s=arc-20240605;
        b=lNmB0tSJHd8eg4xnZFJyiv0ZaMRjRVWnTknSjzzawgt5KCVGQYJTOXHM9bm/j25zPg
         UFvpPOORxAoGv+xXyHjy/WXZLK/Naa9jX2wZcyzN5GVfOqrSuMtJM9uCbxSDM9NOPBB3
         XoTLhzT29Wn+djkJ+3evj9TnfFwfj5uP+USJZh+hVpO6yR+bPieAP9OeHfBtTfmcmavF
         fFQOoYfqCu03SDqJSyfj2pDhLUbhgi/W+nYzBvqSeJMJdktYqAhud3jttUFmnM4yjDmP
         J+9feJEPx5PqRwWAmK6tTF8yxwFFgOfaPVDDwB7wKJd3TV+yer7XOV3/AjvSONbxAPS+
         uOag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=zNv22JCfF6b7HSUt6MFYXS9ESYaJudWJ/sJt7dqrn/c=;
        fh=4Od6yebNlI4G+7IJ0QnZsIFGbPbZvQlnmquSVk1rawI=;
        b=Sw+vcmBvC0a/qLnEFptR6oPbNli1HrdhCRWtxbp9AWCcsTgmoCZHAAT8dqQeze0nmW
         5+P4xsBhbsQrQCIDVpcRDhp3yuJfungihBk9fzCMEl03HBrc14e7RT1IZyj6boxgldwT
         B3JuiYk58yJbECxPC2ewFmlwf5sYR0dPdS1J7RzAPznBoj+RKV5O1YJVRqUvXM6a1WR+
         0p3bR359E8uJxNZKVPBPGp2/y/hbfrgAhWyCU8A0oHsA3+soWneIugwAp5g2z1es8GGs
         PV5Em12nFz4Np5Ep0nKabTBWt6VBtaLVQPbKoG+giZdKrzBf/tN68VsmDICIkUmjZ6yb
         oj2Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nFYrl7fp;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331675; x=1736936475; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zNv22JCfF6b7HSUt6MFYXS9ESYaJudWJ/sJt7dqrn/c=;
        b=iUTngn9sCiedwqX8JWQtEAjpN72OPfqVe6WgGQTpuaAlP9juVOSqBWqnXxMZukl4d1
         Le5K9mjOU9e5RgO6nzisoFkotqk7dKmDTs0xe6I6SrfhsB0WjdJDFmuiYNn2UdpZAbxp
         6gDHwrCk/K1xrz4taDARgfAxz4B6ry6KK+Mu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331675; x=1736936475;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zNv22JCfF6b7HSUt6MFYXS9ESYaJudWJ/sJt7dqrn/c=;
        b=K5Jb8v9ws0xnml+Txotx0w+DTsOznh3TJAr4wBz4lpL96588WHZ3MMA/vNlLSyMKIL
         XaUJE1hRfiSQJtnidUms1+wuJHvzdu0Va+G2c7T8SVvF961jAdLBPeBWQCMvHP2iaaAZ
         T1rZtUYx3gNvIZ+eWu19aIMwPzsN4w2ZYfJFynoEXH6JhNJ1t8jE7BRFZ0SKhkikrdGX
         decXwcyStNdo+vK/orxMS8CWR6AJbVBWo+DjcD3BUwFhhJK0FUTk20SQQrrl6uvhmrod
         KKzKM3xGRG3fLg24KQMUf9IesHtZz0hdx4ncXvghuzwiR4J8BYIQAWDJQ9nYKmG+jhF2
         em2w==
X-Forwarded-Encrypted: i=2; AJvYcCWenwR3t8wbJ1/ncPaj5YwQQPj8UKqmSMR9Agmzm7OT2LHsQKUv4cAKaeXpL5rPG755W8qjCQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy4RoCnHv+kf37ZUGLR73Q1fhc8fLm8uXmoQWFSJa1mWqgjuAmc
	DH5cM/7XlbNbHHYbNKMOU0jG8oql9bHamtApk2aDoDOHWTlKZjJj3GhG7fmWpMw=
X-Google-Smtp-Source: AGHT+IGmLZDxCh1FErXLAeNmf4oAVpc+IHy+hdiT/m0QbHxIy9Uffkr4CY2OlkOU8NL2DwB0NyUIQA==
X-Received: by 2002:a05:622a:15c9:b0:467:60ba:b6c with SMTP id d75a77b69052e-46c7108ee5cmr36852671cf.17.1736331675248;
        Wed, 08 Jan 2025 02:21:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:205:b0:46b:c428:f57f with SMTP id
 d75a77b69052e-46bc428f5f5ls20732481cf.1.-pod-prod-08-us; Wed, 08 Jan 2025
 02:21:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXiLcaJkL5yczM+prWQR4XHNOMRGNCBpUQJ06xdr5MDeJ69jHKxKKcRcvGmWiGO0tFJRAhh9+YHL+oK0Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:449:b0:467:86fa:6b72 with SMTP id d75a77b69052e-46c7108dc89mr28188711cf.12.1736331674455;
        Wed, 08 Jan 2025 02:21:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331674; cv=none;
        d=google.com; s=arc-20240605;
        b=AGheVUMcfZQBaLfTCj3wt5FG05aBZ11E9kHZLK5CO9l3RoebPu3PhK2EGSOuvHClTS
         iZiDfKgTOs2C0MR2fLeMB0AbHI5/7NeqMaMcb0avU7WWyBOlD6cx3i2t19YSwQwtIE9X
         HFiZtEPbz28n/lZVBsn0Q7oWDitcAyrPYPfvCGpSW6hRiJqQelimfFhJoQBmC8R3NSf/
         I+HFMBCNb0/0kjg9xTXYLzThWuZhCFO2HoMvImZVf894m0H+RYKhCMhuw620lvt6c1Gn
         8W0UUdObIwuHF8hvkrxXUAnjcv7Pk/Ri5GcD4egwN6cxC10tDLWvKHQhlPOKWig1FdLU
         A5Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=DzakdUEVyveiS47ojJKozEiWbxBg7PvuUp1agbqXzUk=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=N23x/DNgZyUGTkUw/6k30ZtoipHo3qJIJFJlOYnGKPzXXYJp0jNgs9lD3YuOgCRAAQ
         ZqOVCPO+n7L0TkZYTnEpUlMq7Wl/R/4jhqLKWbEiH0012urcoNJxjcSLJ4SqjGAkbXmC
         /IG4Qa6fq0hJvi8nehzCrxdn5fuhRdQitHXNJknTFmsuNBAusq9/UnrOJBS8sgD/218+
         92ORGatxF6O/1it2Y4GIh8zIeSV6TFyGGsvK8wpUrLhPEfVsTkpn5Gt+Q2Ga3MSP7mpf
         Owud/HCaHmQBaJcV9QlnuxqDwlIuAXxVto4aZ+WTPepVWNmt4lddPRrntDl2NZ+wxwbz
         AMug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nFYrl7fp;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3eb98e70si496474131cf.348.2025.01.08.02.21.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:21:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 76D2AA40D77;
	Wed,  8 Jan 2025 10:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAA48C4CEDF;
	Wed,  8 Jan 2025 10:21:12 +0000 (UTC)
Message-ID: <f3ca343b-0ff1-417b-b2ff-7ea166fb82b2@kernel.org>
Date: Wed, 8 Jan 2025 19:20:29 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/10] loop: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-11-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250108092520.1325324-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nFYrl7fp;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3
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

On 1/8/25 6:25 PM, Christoph Hellwig wrote:
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper and document the callers that
> do not freeze the queue at all.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f3ca343b-0ff1-417b-b2ff-7ea166fb82b2%40kernel.org.
