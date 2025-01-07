Return-Path: <usb-storage+bncBDJNPU5KREFBBZPY6O5QMGQEK5B5HAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 39901A03BC5
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:05:27 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-71ded0593dfsf3812335a34.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:05:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736244326; cv=pass;
        d=google.com; s=arc-20240605;
        b=WKroShSYo2UkTVlfS1YJxi2VGBnxyWGPdl9wGHeLeNMDq9yg6in7xiLklcVW5fmax2
         Rii8z2xgZT2+lox0QBysldJCTo5GqTgQgdyWjzO0yM5hkj+Q2+9GuPC8GuMAQz+xsko8
         iw3YrYIWcS+46uty+DENthi9MoARvFc1QR2ZonwOm/4nUC+WN8zNypXLSU8NOmt1uuqD
         TJfxogcI+ZDELm0JzeLHnk9z6bg6U2P0dqeBBloQ8241afQwDwd70nra8OmFaxvp0QVm
         OKXolGBKe+YJNeQ99ZBuqfYcnpJlBOOuDqoDkRy4YMbAATFwVrVVJ3QNqdjKDzuvmA6i
         ejWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=ayLZvY1/56adzW636Dfyk08aMRa9CuvzPAfHkDDhp8k=;
        fh=LkufCkKffdvBw5nCTu8j75ibkbMiWmfOiJgtgUnpM3o=;
        b=Do2p7RuulErXx6n74y/nNc2i8ZUY911DqCAiPqeI7cdbM3zf/VhIBWewoCP+ESRQ5n
         RCxQsV/L5dSRpin8Z4rW99POGJQbgR4G1bLn3g30kGJxCa1R+1r/BfqoedE67x4aOKBm
         jZ99Uxe7O8o7bpWDtF77qJKpgWaRy1nUE4N3C2PCJ3YT1X/+3xourTHgNxqEP1tZGNFx
         KnEv75bNZUkl7SlFRBtMNxdHKhmaokI0rhgsw8M9gDtcr3pY5dDq5P4Np3eiO3C3P4Cn
         RB4mVoviH/2TAIXx9BQ0P7RcKNRQGkUav7yOmdK/OLWF96vp9szSV1JuBWWw2i7SwZHj
         YHBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DIw6BHFN;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736244325; x=1736849125; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ayLZvY1/56adzW636Dfyk08aMRa9CuvzPAfHkDDhp8k=;
        b=NHEjBDZ02DYxJXQIdE2Oj9DyL8leNSdb048oq91e6CJzrkOsC4uMRrpS61MDXzrAuU
         cYkRLsQWyCatJsbcuTs02XXfyB0YUGOgiG4rpu7fONXdgKoa3n8PHY76McyoeevXLeCp
         WtbPynPswyx8Vr9pRahh9YxGIlkS2o9v9HfmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736244326; x=1736849126;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ayLZvY1/56adzW636Dfyk08aMRa9CuvzPAfHkDDhp8k=;
        b=FJ0NQVWQ1M+JVGW4a6mXWCtqyyOA8v8C2kndQrW9zPldDy77A0ptilNvGIw0ivDBc3
         7fmS36LsM3AGx+2pHHv7engfmSISyhPF8FJwTSxTBh4ar7ax7nXTF8jTm8r7xM5UwFUR
         CknKLnvpjn1QA1xp5uNT2Zj3Fk89LUXNMwfRq5ml2Vef7nQM8l9/0dfcK+bCwsMB5Bnq
         K9OslvBX/gcPSn+8vpv/sn7ZOgXPWoi2C7fPnHOTwKRxcI7TDvbxV8sxDMopJ3VyRWXG
         EY9fjTcxNf+QgzfVLiMfpt8qd4MXOkXMQ0MRRqxZJowXXaloQ7E8szQ0eWu+qztdyUtT
         HKpA==
X-Forwarded-Encrypted: i=2; AJvYcCVqD8wWCW0QEaSIgPGblozZYjFYbOlI3NW10pxHqaSTk6Eww29xnxpFF9Kuk8O6JD0iWo53tQ==@lfdr.de
X-Gm-Message-State: AOJu0YydCxjD6vmnZvc3lrAtKJ0MpFZpWca+qqoSIvGFFovPCsdNO65f
	AP/Hcdl9ngQQDogEBhKiLTe15H4IH2DVgwf2Y+HZK78bdNMGl6HfIDghpmq/j8M=
X-Google-Smtp-Source: AGHT+IFoW8u3hTkZiCro4mifTbYvrVGPKSBK4uaWcdWJIqnTQ2BX/wD1DfeXEWjCKt5pFEivrrtnVg==
X-Received: by 2002:a05:6820:1c88:b0:5f2:c3de:f1a8 with SMTP id 006d021491bc7-5f62e79e06bmr37026965eaf.7.1736244325765;
        Tue, 07 Jan 2025 02:05:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:d6c4:0:b0:5f2:9f45:f115 with SMTP id 006d021491bc7-5f4d814e4cals4733435eaf.1.-pod-prod-04-us;
 Tue, 07 Jan 2025 02:05:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWZkgb1vLmAZoiFwcgsZlVvD/ECOdqEWEWgrLb92z3vDYVn5J7l6XZalu3IazKoH5LBk9BOT+LctoccLQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:188c:b0:3eb:6599:fac5 with SMTP id 5614622812f47-3ed890d7f05mr30604415b6e.36.1736244324831;
        Tue, 07 Jan 2025 02:05:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736244324; cv=none;
        d=google.com; s=arc-20240605;
        b=GFGXts73IrFVzEVvtFfeygFwFxg0F6oOSqiMDjdHFJxVXPkh6ygjufauQNv/RT6pG+
         uu3fdvWZP7cnGcmuZy7NiirJJFbtiUL2L2XqgM0JNDYTJvMJHPXdgCyirlseTMDv4A+m
         pwhaSu3223shtwiGX6WdgRBv9Ja5sH9t3rCNesrM0M5Wo10lybGyShmKFbydXPbpeOsX
         nW/kqAFN1aX83vo16SfVq2sUznAXiF2TxXJwR6knH+NaoDzVfylymqKENKaqJKJEIq61
         ITa6tLmpbtHurldYJJpFvVWphBVe8EIQJoNpPP33fG7mbZGrgIOVzdCaAqy4LDzxAjHE
         yC4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=mI4N7MSq+mp/+6HQ8o/Bg2y+z82YjyfpZ11jQucqLTs=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=jyL6Bs+pAyPBjoM1bHR607OPLvDn68UWcReeC31IO8VPrJQoJLwTHEMhrY2+VIvcqH
         6CdSYRP3cVZpFXvLE3KBqy3DqnwaQogkcLpk/6ljJN19FQrTLT2oPAKuPWGo6CRHhBUP
         251GAvW2mFLjpfQuUhrkkAi1sohTwtc0MAwrLiOyHq9MC3km80MeDnTFmHe76RCSqaf+
         vUq7VoqC4jzJGPmuKzysrTv6S51lO2GeSQXty3Jhll6aIDIE5ICb7Xh2rMj3kHJrypQy
         PSqrQ82hOXrjvYc1BCeLIibe6NvcEyK7ecGV4d6ZtTL8/hjBvorhU17udxNx0hC3Ts14
         fTXQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DIw6BHFN;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 006d021491bc7-5f4db36eb25si21997291eaf.11.2025.01.07.02.05.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:05:24 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 88CCA5C5BB9;
	Tue,  7 Jan 2025 10:04:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40471C4CED6;
	Tue,  7 Jan 2025 10:05:23 +0000 (UTC)
Message-ID: <7b657b32-dd25-4826-9c2f-dfd980610de2@kernel.org>
Date: Tue, 7 Jan 2025 19:05:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-5-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DIw6BHFN;       spf=pass
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
> De-duplicate the code for updating queue limits by adding a store_limit
> method that allows having common code handle the actual queue limits
> update.
> 
> Note that this is a pure refactoring patch and does not address the
> existing freeze vs limits lock order problem in the refactored code,
> which will be addressed next.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7b657b32-dd25-4826-9c2f-dfd980610de2%40kernel.org.
