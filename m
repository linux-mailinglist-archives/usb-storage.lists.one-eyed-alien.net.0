Return-Path: <usb-storage+bncBCUJ7YGL3QFBB3HDXOZAMGQEJU2NITY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BABA8CCD16
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 09:36:14 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6f12146f11asf1081568a34.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 00:36:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716449773; cv=pass;
        d=google.com; s=arc-20160816;
        b=fg+nYuo3rPsJRxWgda1B/1DeFausg+85iYDDk/onrWi/1y8CQb4cgL8j18MEfYqH7d
         a/SQmFie/umTHc2WY3U767i1iCMtPmsWACiNzw/k94kSgvq+wXHNHdfDxpo/tN0BWFjK
         CDiqIdnQJ83jbQ8P9lVABkV8d+O0TW9ZV8M7Vfze0ftWTd0kZbgbBfTwyQU+YioDpIUw
         l4PyxJtSDoJxh7T8r5Mr47mw5S9ZN1Moqr8xxFRd/MMCxho1S3TJM/g+rQfgEfstNYB/
         IYcsgete7+MflRoeDiTvHXUU0wZ0Vbp07JIxIOXg/RFvMvhnyjztac4bGpvbly14/FHc
         tx+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Kqas/pxk9ztfEQ4nguQHHWbdfXhaJnD0BYoTffwfbFE=;
        fh=dSP8IfbqQkwywsynQdvN98Kh9vBjCg1Gtxl1JpqIpdA=;
        b=sFmsS3dRtHyvWixa6v2Y53ls6RsmHIPd9wPMk/dt7IeMGpYr3iNUd6NWGxbNAVuAWE
         elwqwsYrLUSAYT7OzLY6Ox3Z/OXj0JawlTK0RZU7eUQxuS1QEmCqGXzQQi11RthdesVh
         z/wRmfOoLjiwDCMhpyKo/SPUsB+jV3dimbt++ApyAcrNEV0ucNmqfbdEWYOl4/5GnCOl
         wTe5yK0Rluczhq7OwyF1FavWs8aOH6bBKJeJ73vHlxj/qeUhv+5NyVzTjU7QzlYxbrGZ
         VmZQfnak2U1e6Y8H8XMDkePQ/dKRDHvKt2OUMVAclsUycz43pdPw7c3KFI5vYrgH0E1b
         zfsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="YdJ/BuzX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716449773; x=1717054573; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kqas/pxk9ztfEQ4nguQHHWbdfXhaJnD0BYoTffwfbFE=;
        b=f2e9rADaD/9m5VHCuqo9Zl0lhJCNW4kJEWgiFocVb6t8c3MsAWCz5q5QCflkRh0w9V
         pvC5Z1LErrn2ZwHE/2fs5+9ishbcnspzrKRVRYx7kmSweEzUQiSUoRuVleV6LeTpalSG
         c2aIOJ9OYL/xe/OdOt64d0kZHchGtSX0zuHvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716449773; x=1717054573;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kqas/pxk9ztfEQ4nguQHHWbdfXhaJnD0BYoTffwfbFE=;
        b=ZMwg03IXBrhc16aDbtS0qR5Nkrmd/RHwsDz/3uUybUv8w2wo48gBQgXj94T8P1MG8A
         zq/tv5GncyjrGE6cD77Dxi/P2dqxNOpiHV1o5JHB68gK89JYWznqY5Z+ha4hMTIdV7Dn
         +blQYBKKN7yniujJX2PpmmcgkCuHpnFl8kznb+Kv731cob2ean2z4TWyZp78j4v26n2S
         zqsY1KkOg2N0/4YADAH0KomhDP5sTvs/AIsEFZVngggmP4naH9hYrrDIDYKSrJLv3G1h
         Xz5NFafHLi8H0rM9yDaPTiYHxAb4DulWmRkCdoB/af18F/YF1Y/PGISRDseAXPTJ42T2
         ZSxg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXEBhpivaCBTvsT2CO4cVZvL7FyXhaNeNBDTlv3biAoWOWr9NTppQrJcbmTQq0TzUT79QgHYlqXLznLrrlPLOy9UcG5gUmHjxZi
X-Gm-Message-State: AOJu0Yww2hyyU/lzx9+RAw3Gnsg9O489lHxpoPi3rNmqWeuoEmbMiUWO
	MJsYERno9VVHsC6eK/iaLRn9mx0usB2cGdLSrMHU0xemop7m70oUXPuCOP1dD90=
X-Google-Smtp-Source: AGHT+IHY7L9Z3/Xi/htCJJsxhzmT2cATaFtYn+CpFb3sNkwhhgVVeKyf18YOMR7FKHFsPfMhXF6OXA==
X-Received: by 2002:a9d:7f03:0:b0:6f0:6da5:34f9 with SMTP id 46e09a7af769-6f66a3b2854mr4557643a34.23.1716449772914;
        Thu, 23 May 2024 00:36:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:a9cf:0:b0:5b2:e7:d347 with SMTP id 006d021491bc7-5b26a80ee99ls8049610eaf.2.-pod-prod-07-us;
 Thu, 23 May 2024 00:36:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUTOOzsgwHknstObtD19OD0o2YjJ14Nij/Z9JP6sKx3S4EwNSFRIfv0PspJjH4XpSdeR5nLzLChn3isCF7SnaM0rdwKrorsCa3r6CCnPpngeuUzV+M=
X-Received: by 2002:a05:6830:1243:b0:6ed:7ce1:6612 with SMTP id 46e09a7af769-6f66af45cc0mr4499710a34.32.1716449772173;
        Thu, 23 May 2024 00:36:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716449772; cv=none;
        d=google.com; s=arc-20160816;
        b=XeQzt1oa5PrkguBn5Rhb+1WJtTRdTcGMIwLGwArkV+/u/kqgpV4ESGGOHCcFbTrdN1
         0ge1ZYDiIIOJg/2QWApwKvaUrN1g57u5v29fDTeFxCXYUZgAOhabBmQsqrv/xdsM07IR
         U00Pdv3GQurhGBgNtKudK8M4NggIaHc+ky7ktmG3VFarD/pZGiD7Cw8snbhVFZxl41/O
         GJNtLw+ioZNETr/AeUxSKMYyt5UIMaFmZ5dUJMpA5CaNHlGh7hySOTUpE1Hgo9cMJ8S7
         91c4S4LuXk54KLszyodtAR8pXLvK9k9zeZWl1TO9GYN8Cr9UZFMng1P+VoFQYiavhYL0
         k2Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nFuC+IQzypvvf/fRrr4tCoKX0Jx5GvmpAGFj7Hzg86c=;
        fh=LuVmvlQybw069I3ulxsrY8dm55J8b5DpA2IYzY1WvtI=;
        b=s07jY3g4tXxpg5/L6JBln5TPHsEUP6NLJsvSqMLFlVeF9vnlhu/0nnotb+Vr3ORjgx
         YScAdxR+Ay/h/7HBTdaTuRWn+bl8tghpSzFBKqBK2l0N9uP1c0oZPSNwrAaGzGOfKHRl
         n8JnmwCuozJtLC2UcL120/IrAXDoavDpYO7qWFKOlZosfU+HbwsuWsa43pNIiwWXQVx4
         l95OzvPVE9Gtqx0oKAtZ4fj1rHqnuF2pLuku35QHXk8TnLuHFLF2oUFsHsKo58+pAa8s
         bALYbAusC5BIIyt9AHaEuQ0OS7R6XGItSv0pl/2WQBtaNJdEMBu19cXEX9wBos7ezJbL
         w1Hw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="YdJ/BuzX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-6f0e021bfdesi11158066a34.201.2024.05.23.00.36.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:36:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E571C6162C;
	Thu, 23 May 2024 07:36:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46206C2BD10;
	Thu, 23 May 2024 07:36:11 +0000 (UTC)
Date: Thu, 23 May 2024 09:36:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shichao Lai <shichaorai@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
Message-ID: <2024052349-gossip-blurry-eda0@gregkh>
References: <20240523072242.787164-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240523072242.787164-1-shichaorai@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="YdJ/BuzX";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, May 23, 2024 at 03:22:42PM +0800, Shichao Lai wrote:
> Since uzonesize may be zero, so a judgement for non-zero is nessesary.
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
>  drivers/usb/storage/alauda.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..db075a8c03cb 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
>  	sg = NULL;
>  
>  	while (sectors > 0) {
> +		if (!uzonesize)
> +			return USB_STOR_TRANSPORT_ERROR;
>  		unsigned int zone = lba / uzonesize; /* integer division */
>  		unsigned int lba_offset = lba - (zone * uzonesize);
>  		unsigned int pages;
> -- 
> 2.34.1
> 
> 

Looks good, thanks!  I'll queue this up after 6.10-rc1 is out.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024052349-gossip-blurry-eda0%40gregkh.
