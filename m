Return-Path: <usb-storage+bncBD3JNNMDTMEBBZ5PY6XQMGQE63YGP5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEB887AB9E
	for <lists+usb-storage@lfdr.de>; Wed, 13 Mar 2024 17:44:25 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-29bd81c08b9sf64231a91.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Mar 2024 09:44:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710348264; cv=pass;
        d=google.com; s=arc-20160816;
        b=urK+anu1UcoAciYQHJDXeDQFKJy2rjvzPM2zNMojcFtJYf6i5iDgxsphmX+HMsSDKo
         wjMylmRgNf1ecBwrQFyAGi+MbdX5V21wNt5N6VY9ugzZG6lMgi3WIT76AY7Ln9sDeYSY
         UcUh9eALrfNhfxFfHibSO/gK3oFrJON/TwJK9kIx9yEMA8qSXZBSgvw8ydG1SvEt+x0U
         QZkITcodp7LApbTslTOsSswapxG7AU7m3Nho+ZuDsiMZcM6iEYbR9yKlN4cqp6E89exB
         2ilPniCEzc2Z/gprHzQ9prMPFG5Scs70MyvFHD7STk/+0Yzj0C1WJTcxMqrR+O39XkP8
         0Ryw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=2A3ZCo6GkWe9I5Inm81ywB9znRIfeXiLYS6VP1R4t14=;
        fh=lhVi/B4/1LZzdGSih+f7qt4blVUr1m+KlsLAzxkaH2M=;
        b=o6sHVQP38ImV1XLb5iO60BvJ7eDBc90L93VXHw5MxolCNg8evTWdDgXbPDyydmRfR1
         1xPeSQwgdoWPUC+Ejl6FLaC5d62iwbNb236MmsIJWAIFRL064u1NUvceMOCfY2rE8RxN
         A7hCAhHLO/npQ0bgeVAY6uKkKisAdST+/eOWAd+XJ3bIkDFuzpcFJ+fctILbJ0STOehR
         ik66SnexTHsttJz7O4SkHx0xW+CtxM3dy1HIiEimvEXizOJEdA4uhNNR0HXzaETZ+q0n
         AhqyBmgABteI2y/tdduO4Y/YsOYTtlLDQlggbP7ovJgRhAVG66qIQISJBCus5ycgkGzY
         R8Rg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b="CN8A/RbA";
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710348264; x=1710953064; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2A3ZCo6GkWe9I5Inm81ywB9znRIfeXiLYS6VP1R4t14=;
        b=I4tELI5KdWjUGWG95hyfwk5XnKsSs9rI+KDNhddpNmoRGkEgQXinHGzVjoQoGngDfL
         S+vJqo8p+MNzjqMFs09/7yFxhQ3QB4n7EWac0GJeAMdqGwLbKxvKp7gd877dzt1fVzOV
         cF2hoGce3veDhJC968Sudy2tb70NA2hcWauzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710348264; x=1710953064;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2A3ZCo6GkWe9I5Inm81ywB9znRIfeXiLYS6VP1R4t14=;
        b=jPs0axxopTnIo+HDdAXOBwD+sW6EkbImpZbUjykzS7HLRXeni4YuA6UnSn2CWopFi4
         G6YddpQQhh5asU4ErVACbT9tlhI/z4omIyUoOxDcMZF4XWPv4ZZGM4imb25JS4G6CN0y
         8ghn6M38Sc8+bvnmCc0lzAqGuzxcnvSOhHkgWrElakebkim968fzfi264KyCVmm0UWvb
         Hii52xTdHF6S4JC0wLP/C7O06QUerDk7a4LPkFwqX40E5Z1gVdVLk4JHg7C+ZIf1lRmZ
         Iicz/zmilrOdDZyYA3fD5bB5JE2maZDL64tFCj6qcYwD8aHFEXMVbMqrXiU7UvZzzC9C
         f6bA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUI22pJjp+wZjeWO1DfC/Utr7xIeZ0kCtwhiZgR+ry30XX400NnBP9l+QMYt+4s9Bd6xj5sxJ0i+F4c+MUh5yP8DunjP4WMTrdo
X-Gm-Message-State: AOJu0Yy99bkoEkHvRQcCH4mwN6sLx5mPlan66bMcVNDZ+XcqIm/IY47n
	we7sg0kU60do1GANvMA5ccHLa/H73j2/8BWd/eCJB0UEhwoiywm6k5FJrXRvjwc=
X-Google-Smtp-Source: AGHT+IHKafHhzVqodsCN96J9yyW+EzBgeaLNITA3JQDABak9ONA/vQxEysrH6mQLLgPIX9wgT2WYSA==
X-Received: by 2002:a17:90a:77c5:b0:299:1777:134c with SMTP id e5-20020a17090a77c500b002991777134cmr6339491pjs.33.1710348263856;
        Wed, 13 Mar 2024 09:44:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:f18d:b0:29b:b1bf:fa30 with SMTP id
 bv13-20020a17090af18d00b0029bb1bffa30ls24113pjb.0.-pod-prod-01-us; Wed, 13
 Mar 2024 09:44:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXeS6pdKPH9g2FnoabTmCw/55b4qWDvH1ZtONiTW30mMDoG2z41AQHR53Wliq72KSZG8cE6eHvOuJrGM86xKBhv9FtN2H6QRAxNw9cU4uXzxkOqaNo=
X-Received: by 2002:a17:90a:ca18:b0:29b:77fa:70d9 with SMTP id x24-20020a17090aca1800b0029b77fa70d9mr6886849pjt.48.1710348262570;
        Wed, 13 Mar 2024 09:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710348262; cv=none;
        d=google.com; s=arc-20160816;
        b=NMGEfJkXX6zgLtnCgnEictjA57t96exCX4xkVUGTxs70Jo6glZ906iGorbOaQimh4C
         4urRq/n/T7bGQZfww8DoAnFQPWdpEyY6Ax5Rg5+fiW7yZi1LNUba8CoJgX8aDAzZSPtr
         6zRGLtCGXtx+cAneQO8dABWulP3zeZv+HQBTZrlMqRhtRWRwvDHIaAGdPlYnv7N6esPR
         ALWIHnvqYtmKhfEq9MdlMV+NuYFZUfVq8DgIpplrT4WJQxVLQXlcpxRLRHGOy4fEbNbX
         C45053aeDSexrCIopM2MZQJRBWLOK2fGMZIoYSlE57eODvsCDJA2WbHUp/BLxdTm0IQ0
         Qbjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=+j4MnK8yhYNXo+bM95kvafS7T8rM0IDGcmMjawvqJlA=;
        fh=wUmJUIkR4pm8HF+1Ol8hGLliZZSQGinSj+NOdY7aXoU=;
        b=TLibspAlikmidST9M9WCZ7b3AHXBz2TS73qXf0nKw/qfpCokk8LTKrgQms7tMSuL6z
         u4xHnuEOreo3yABKlr+d4DGrQhdCXeJE1RRr/q2vDV+UxLX4fbnsyOtF3QUhaahBw5fh
         mWeXNxp929Hd5QaFJi47UpU1CndYIY+fqWQTuypUFaBTWvCtnPp56BcfY6IySUbLy/sD
         aqwo8yANuDryUIN0aDzgVRpP3Tcu8HFE72gfNieoiwMueiMCRw8Z6yNqNU64So4JK4m6
         mXLncgYo5YPM7+8GN2j7ZAT7mpersObPepyfZWg89crhICTJDb9eCovreXwwOTwPhvg1
         LkTA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b="CN8A/RbA";
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id gv22-20020a17090b11d600b0029bfc9dd474si1728166pjb.147.2024.03.13.09.44.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 09:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4TvxDk1mczzlgVnY;
	Wed, 13 Mar 2024 16:44:22 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id VLYf3Jaka_yc; Wed, 13 Mar 2024 16:44:18 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4TvxDb2X9XzlgVnW;
	Wed, 13 Mar 2024 16:44:14 +0000 (UTC)
Message-ID: <c8683449-1545-4372-b937-dbd0e023c22d@acm.org>
Date: Wed, 13 Mar 2024 09:44:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] scsi: core: Fix unremoved procfs host
 directory regression
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-scsi@vger.kernel.org
Cc: jejb@linux.ibm.com, martin.petersen@oracle.com,
 stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, kernel-dev@igalia.com,
 kernel@gpiccoli.net, syzbot+c645abf505ed21f931b5@syzkaller.appspotmail.com,
 stable@vger.kernel.org, John Garry <john.g.garry@oracle.com>,
 Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
References: <20240313113006.2834799-1-gpiccoli@igalia.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240313113006.2834799-1-gpiccoli@igalia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b="CN8A/RbA";       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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

On 3/13/24 04:21, Guilherme G. Piccoli wrote:
> The proper fix seems to still call scsi_proc_hostdir_rm() on dev_release(),
> but guard that with the state check for SHOST_CREATED; there is even a
> comment in scsi_host_dev_release() detailing that: such conditional is
> meant for cases where the SCSI host was allocated but there was no calls
> to {add,remove}_host(), like the usb-storage case.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c8683449-1545-4372-b937-dbd0e023c22d%40acm.org.
