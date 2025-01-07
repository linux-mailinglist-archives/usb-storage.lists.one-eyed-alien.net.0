Return-Path: <usb-storage+bncBDJNPU5KREFBBPHW6O5QMGQESJSZYVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 147B7A03BB0
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 11:00:30 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-29fec25e14csf4140089fac.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 02:00:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736244029; cv=pass;
        d=google.com; s=arc-20240605;
        b=GfLVoFgb/oTHL+aJX92Xcll1wxYXF8ygwI2cEFMNBpeO8mpuO1onEgIw5MD0Hdm+w5
         82gRAbKeip9JqpfCDhmrfIbDWZ3jakd4DJq9yRIpjx4LkTM0U8DTDVuV7qTBZbkRjDUK
         KbhZCNT+td41CmXr707moX5EaXCn0OLrp03WoPShySWCMOL8t8ip0o/l/+AfxNhaZkUK
         qm8v/1Afz8BOhtdmVQ8I22qb/3wW45D8iAW5QH5PwLJ043PgiCTu53hSalsFS8GdMpW0
         JWpVIUW1/yMGMiY4c7dZrAPp9+DXpZ3yOxYNMFG4CgvdNZn0+cPLfchwT1vj/Y98AbJ/
         H7wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=GkvIvPUGBrf9rllmbibu9BXQbc6nSVP0BjcaEc5HCQc=;
        fh=k1H15ZOkXBh6rfvDTdsMxDBeVbcak8EQgmdY54l5eLo=;
        b=a3TN8FpjJ0pa7RA/1ikqN4CrD7LFlpyAxi0TOhblljnhr0n/5JodT042mBUilBy29o
         C94cde0vOHjxW+03AHKBNCcenu/ZydvLUAIS1i/DBt1VdHb7aWkbTTNYrKgZFCHNI7ZI
         2btXvLXXElphvOnYFUJPdsjsCfVoNlWFtLSj4YttQwYG6n7beRY3f1lQ7VSUxhFtDJgr
         cSO7690PQnz9rBUTzlSBr4aWLfTNUKHlnjNWaSWyQtevgIvITAi7j/NeUUFlOUHoafMK
         tNmurGCuiJIwf6zNtdLp9ulwiMnU+SwsEJbfcsJZM3OvxwmBthSj35+6i2MfoBMWYLgW
         grNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p2GYuq1v;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736244029; x=1736848829; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkvIvPUGBrf9rllmbibu9BXQbc6nSVP0BjcaEc5HCQc=;
        b=PaCej8DKm0CZSa1o2UuttvCnQQ7KxwvT36cqF4rsi+Gk8RVK8hxCi2GwFbeKlBzsVu
         /BLypUBwFg9h+YsXhlCeRaqBsXmgU61f+qcoJ5zePkkbAHOcZ536bZuAo2WAwMA6GcCH
         CNTVHAgKSNwddALj2MennOapjzqGOay4d08dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736244029; x=1736848829;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GkvIvPUGBrf9rllmbibu9BXQbc6nSVP0BjcaEc5HCQc=;
        b=r0AKfTCUSLGpGEGef0sPA9N6Uvfe+1NUGFC4SqNtm6621JJPvAWwmFJsALmFMpP92t
         kOKyvxGM63muMms50nkMm22oRoyToRFzWnL+/guTouo3NrjHQEYqqy/hFUJO7PRyTnXh
         cGJF61EIIPPq4j/touLuc/bvWdFGmJkZg0j3Jfz8zI9J+4ZDhc23t09PSyzlpz2DItaN
         hN/jVkWLv4PNWcKWm4In8JfGWHyfLo7swsOyE8C3euk6tzDK/CdrmIuXgg0Zj34uArFn
         BYV2mehSUfs0Dhu6XNF91w5s+h5RwWELUNeHhmZR4HCgwVJlBtZR4RrRHS3OA26DRS6Z
         EdDg==
X-Forwarded-Encrypted: i=2; AJvYcCWVhOW1dtqdsDink4XPv1fDx47WQ8yEeL5HCgOyGO1taqQvS4Ywi0Nz0swjMQPNMAjQKjTiFg==@lfdr.de
X-Gm-Message-State: AOJu0YxaZc4R1TanMgqGiXEAMmlNkl8XtlR0GgBRIFnsjRs8VEp2t2OW
	woODmCASFXIsk9T16eEbeXzwLGqzix0zIxV30miNivF0P35J3aJoZ79NKkUbg5g=
X-Google-Smtp-Source: AGHT+IHviiZjUOBfneohamRKGuVqOUuQz8fB5HLCRYlT/agSFt6Fz3zmZDXy531ms4AfG3AuoAw0YA==
X-Received: by 2002:a05:6871:a508:b0:2a7:d856:979 with SMTP id 586e51a60fabf-2a7fb3e2109mr30938010fac.40.1736244028921;
        Tue, 07 Jan 2025 02:00:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:7007:b0:29f:e65d:cf4a with SMTP id
 586e51a60fabf-2a7d0d39f1dls2522665fac.1.-pod-prod-04-us; Tue, 07 Jan 2025
 02:00:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXMfC1dYdA20PfesbQzGsDDK4l7s6zKQPz5Mvpq9ob+eZQGQxeUMleXQkEqrzT02pkqPclXBUx8pxZGWA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1245:b0:3eb:575e:3ecb with SMTP id 5614622812f47-3ed88f85b8fmr41382472b6e.19.1736244028201;
        Tue, 07 Jan 2025 02:00:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736244028; cv=none;
        d=google.com; s=arc-20240605;
        b=AdlCcbKaJi4Gopnt0VbNDZCsfoBPhvPJ6dWy/yoi7bjoY1LrHrTMdPI6ctQfJHvvU+
         MtatiMELG7V/xbN/zVUXFiT4btGzw+pnwH/Tk210nFGZb8taB3qfK0YVP+2B5dwV4Tpa
         lCWoO+dpignFdHRUwisAoAvOdjoM3wygapFbWL0dJMd3VbIboEOgys11xCHIKFlgGzhK
         Qr5+MqJ0MyYZ57RRidW+m9La9KrJOtsmRSZag8bqDX3cKYpd3fnQ3jg0ZGLSKWLvSNkG
         kG9qYPWOQQjfUj0kMiHEHzBmlrKIFVryOQ4pNuFvJZV5dC5ILoqofrED2Ah8f3vxi9Fu
         0dsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=GS1ScjfSNktWLHTP+v87aAWeEwnS7bOrCzMF7rqddYQ=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=aNyPw2Ze09AqsEiui9C3Vlp5QYlryOdhtN56w7tPgrhXwQvINKlfcalZDajwA+OWvz
         iuQ6Uf8shsbIIHEAdUYwPpfpUi7WwKA9IPvo6iHDXPe8p9GbpZXVmvL+WxmXE3RE5Aep
         xYft88d3HXRirE6kHQmomCE2DLxv0cO29DNdf37hADCEDmq2apAbullX/0YGdRpUv87d
         ErJcWbJATq/Jm7mO3ShcgCFgQh0kRnslnaGv9RxzswoEi81Sq0csGfO7NjkXg/WDnky8
         YVy6WTGegrz9xxq9SVLiXQLe5JqMOvlT391GS7Ds20yk4KKXwIK6L6R7yuOIxdZdKG6P
         nZMQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p2GYuq1v;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 5614622812f47-3ece26dc0f3si25464317b6e.285.2025.01.07.02.00.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:00:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E191D5C5D6A;
	Tue,  7 Jan 2025 09:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E30BC4CED6;
	Tue,  7 Jan 2025 10:00:26 +0000 (UTC)
Message-ID: <f450d490-c820-47a4-8a29-316b6dab855c@kernel.org>
Date: Tue, 7 Jan 2025 19:00:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 8/8] usb-storage:fix queue freeze vs limits
 lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-9-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250107063120.1011593-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p2GYuq1v;       spf=pass
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
> Match the locking order used by the core block code by only freezing
> the queue after taking the limits lock using the
> queue_limits_commit_update_frozen helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>


-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f450d490-c820-47a4-8a29-316b6dab855c%40kernel.org.
