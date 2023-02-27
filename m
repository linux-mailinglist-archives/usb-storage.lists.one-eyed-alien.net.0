Return-Path: <usb-storage+bncBCUJ7YGL3QFBBC5U6KPQMGQE62NSVVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id A96C26A4139
	for <lists+usb-storage@lfdr.de>; Mon, 27 Feb 2023 12:54:52 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id x10-20020a056830408a00b0068db8db7c5asf3495533ott.11
        for <lists+usb-storage@lfdr.de>; Mon, 27 Feb 2023 03:54:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677498891; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IfpTuQYre+qGxaLoiosvFUAKrIc/qZ5yVAUT62Id0mP6QNwmCskxuOM8+zylVIcUI
         kdnIFx0mpz3y6aLwYJBWL434sy7FKY4N7wwVAXD5LwGLx8W0ASh9eAr5a6BNG8T5HQQV
         UUhlOmXFegJ60a0l1yOmE59QDkcNh7ttTeMIOZm9n53p3bCBac1G/7YJuGPGgmG7P3LC
         J8RMHDQUpGIzgHO3dpgqavMTrMr7tJ2ZF6slrX3mWW8EJrPrVI2R4U9l+dEQnvfA/kxM
         T5ucnT2u02uWOElNbpsEL7gPkUDgXvBKb6TI4KRaLrz+e2jaYbRdMmVfAyS2ClgALy+O
         Cg4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vGbdiiwz9cbKmqjsP9QmvZIX5/b3nuKXc2fARGnVyS0=;
        b=bI7veFQ9wJerMg8MVQzFikhPIMVg84yYZCsEgOfoxqJkGAGTtzgj+5tJhOryq0knJB
         i9glGM9dNT/Y5R/DUvYX5k94DDRIfZ4HtIhaUKbik+5h9iA39ZSw9Eq5AvBpw2G5Yw3x
         dLZoSHflvhyyUTVrZyzY17Ftov80QXNpXf1glLngzvyz8QyFAA3NJFM67dQYkGAYt0xD
         yVf9+Lkn7sBYQ239G34nVt2P5aZmGFq+pZdXEf9cajPLM+xsDWlA3ksENJzoAtbMZxQe
         q4oKVIDt3V7Yq2WKn7e+VS9NN2EgT6u+S22Utw6W+NGVK9xoa/tmYqAaMnbWW30eDxQe
         Lr3g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iquXKamE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGbdiiwz9cbKmqjsP9QmvZIX5/b3nuKXc2fARGnVyS0=;
        b=X5jFNUV1TabpMWA4VoCkfFKObR7z6gn/YYHo8CJn2NAJVfiOcOI7lcfyxl26FMMED8
         Hc9/KjjJ2TJi7WTQA+iwEyG9veQUBDlbvT7W5DXwUenpQwXczMckkQye2YfhCLbKl31a
         rA62Zvg7dcTUNKeRH12hfC6pF6bOoWmyyu1SM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGbdiiwz9cbKmqjsP9QmvZIX5/b3nuKXc2fARGnVyS0=;
        b=vBnSxvzFPxd6JvO6C42RGCePgarF+wR5ZS9mbsD+u7fkSwk29FHF1+0Kevfabu6brH
         KoEI50fEIQG8/9huzhq0ol85KAhhAFRb7BtEDsLO2UEOsT0EpvcIIbjPmT8ONCbQu0Rq
         ZA6kJxSUvmMNTiW/gq6Y01vD4JHnnA5k66ChdxzbKn8D3oyZ3fzCIx4jfd3qmGUlZUH9
         uLrQfJl8tCLczJ4/K3eF3NvFh9Hwg7kdoHUyUYhuNbb6Wvj1QttIWf/8ZeFiCxK6lxRb
         FU7QW9g4+6e/HQN9owegAHLLYjBp7gAB+Gj6zfqEq0Hlbp9nuqOary8LBxdNjB5vljs4
         y/jw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUlCxZODZnStx66FbPyMNxWkSj/f0fplMVkcMZ/fZakD5Nha4bq
	VQPlYCaVBiB/LOEblib1MsPhvg==
X-Google-Smtp-Source: AK7set96g8BhPRiAa9qHNdIADHXG01IEi2zAToD/Ar1FASbxLeo+3aLys7JW0X4YzseMVTmgYvVFUA==
X-Received: by 2002:a05:6830:4124:b0:693:bddf:3be with SMTP id w36-20020a056830412400b00693bddf03bemr4847550ott.1.1677498891135;
        Mon, 27 Feb 2023 03:54:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:2210:b0:383:b12d:145f with SMTP id
 bd16-20020a056808221000b00383b12d145fls2969340oib.9.-pod-prod-gmail; Mon, 27
 Feb 2023 03:54:50 -0800 (PST)
X-Received: by 2002:a05:6808:59:b0:383:fa46:af5a with SMTP id v25-20020a056808005900b00383fa46af5amr5120481oic.24.1677498890531;
        Mon, 27 Feb 2023 03:54:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677498890; cv=none;
        d=google.com; s=arc-20160816;
        b=V5UKkZtyc9eBkfaKyaZTuMukbsrAPMm6oKFx86tvSd0J12asGk9DZ86kMEhZFKrl4Z
         8xUE8mfmwGVM34ptuz0AsSVu4Hx2jLZ8Lnmb3afsp0NDk1UizKhb0ajK02+AfGjph2FL
         5RD5wCPqwjcdJQbYWFi8qqkI79gxzdxk9jV8dF1CQbQyAL3ojEre/1JYz6x1/5LMSVRP
         5kiWem4/7zfML7pNrXEDjThxrK467ICLV664eI9BCVGUyzSgwy0EFr0WhfNq1a6rmiEP
         tysYP+kiV4o4Buvx92goxkzl5u8Cp3M/Snw/cLZJyekjD/6zJJzy45pXTcTP1ZdRbjRe
         5ihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3+0/i8GC+xWIbr+yJtM7BHcr58CXIKhSiMJd0Dac0SQ=;
        b=M1sRtfjx/+aXAZNHmjugNtvSgwKHM1DIK2yx/QmAqElujXRZDmEBBa685E356CLBBB
         GwzGA02Rh3t284exLy/3Wlh7smJuXcIBejAYX7dU620Ky6xfdWefAd1ajdIkDqp1a6XP
         EnB0GirtyjO9MK2jzqaiqVvYzdb4FCzKPFIf8n1aTg77T4KLe3JyRvyW77mcmhsdt1zw
         ZOUcK5emz/D7e6o4aNb4T6uTvC8qb5TQO3gy7/0kOi5SNj84D7L3RhSezYxKCbQxZwIu
         MXdLVKo5qimRE1rRWi9NQUHXRYEYcVREH8d3LfleH5t2Mcay0b6TAhOezqQd4kesMyLv
         fPSQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iquXKamE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id j11-20020aca654b000000b00364e7e439b9si7959659oiw.292.2023.02.27.03.54.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2023 03:54:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B53760C8C;
	Mon, 27 Feb 2023 11:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E509C433EF;
	Mon, 27 Feb 2023 11:54:49 +0000 (UTC)
Date: Mon, 27 Feb 2023 12:54:47 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Karina Yankevich <k.yankevich@omp.ru>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH v2] usb: storage: sddr55: clean up variable type
Message-ID: <Y/yaB2A8qwgRkqVO@kroah.com>
References: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
 <20230227112541.14849-1-k.yankevich@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230227112541.14849-1-k.yankevich@omp.ru>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iquXKamE;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Feb 27, 2023 at 02:25:41PM +0300, Karina Yankevich wrote:
> SVACE static analyzer complains that we're possibly
> losing information by shifting an 'unsigned int pba'
> variables in sddr55_{read,write}_data().
> It is a false positive, because of the card's total capacity
> is no larger than 128 MB. But 'unsigned int' is more
> suitable in this case.

Please wrap at 72 columns.

> Found by OMP on behalf of Linux Verification Center
> (linuxtesting.org) with SVACE.

What is "OMP"?

What is "SVACE"?

And why change anything if there is not a real issue?

> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")

That's obviously not the correct commit id for such a "fix" as this is
not a real issue.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y/yaB2A8qwgRkqVO%40kroah.com.
