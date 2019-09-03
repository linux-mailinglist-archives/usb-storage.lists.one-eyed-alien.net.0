Return-Path: <usb-storage+bncBC7M5BFO7YCRBFFBXHVQKGQEMIBZIAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D10F7A6787
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 13:37:57 +0200 (CEST)
Received: by mail-pf1-f199.google.com with SMTP id c5sf5487472pfo.17
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 04:37:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567510676; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMe00avgkBT2kvryNlvY5Mg3Yhc7G0EN9D4OilVmeeY76DWLLvMTCpOdCdcXD1H4uo
         q0aDVla6RYY7L8kSJjnfaNOaM8Wtwtj5lpCgHNK5pK0WmCLSGVPfGWQCreyvJjxhgkbS
         oeYt9M5L2TLgdCjIftYWAmfX62kNTaBQqzuXe8PZsFKNk4u1eHb7R67qIqZyAjl/xHwX
         3oWveCfhP8WKQViIicoc85kjJ/vozm77SUPgYf1QuKVnB9L42MprZOMz/njM0wJ/Rm14
         mIg4HlWb562GxCcmlDadDs+QfKI/ljUJ5jVCOE1m2Z5bTMDwzairkIlTs8uOmAf2/dMz
         yNyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender;
        bh=58kxBejuzJiy8qbgEN5uljUz3+/nkOzBJlYM/77Joa8=;
        b=oE+7ar/gzKp27aLaw8o5OD90Ju031QzgSAga/MKR33Yyv4rWzIYo20lHYU6BKBgS38
         a33TDgX0vQgqBo0Vwom+mqX9fZQTkLF+RVnR/Mi6fJdn3/cLcSN7JQhkSz221OPXELWh
         jnwvAWdKLbhh6nWNiFyDZIIrzpltr6a2oORKWJCOfy0uJjbzrpKObk4zO9z/+ZvCohcb
         Ea9avyIMofaveFzmH2kJ6Eh5Gr9G5r0trnXEeiPz2uy2H7qa3GtQlqaf7oaIciVIuXp0
         itcKM7MP2Peo3brjyVN+sTvNmiv+lw2ic+SmeCjSIceKsXPC5xa5muqL7QqLdgEemKY5
         KOzQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHM8cp4i;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=58kxBejuzJiy8qbgEN5uljUz3+/nkOzBJlYM/77Joa8=;
        b=B0mhAXmxuBG1EDoPpjNptR+BWAz5TKAbos6IITnxEI3bFV3M7uBM4qXflNDiJeq6Qk
         kOH49ewvrfuq9Uv93UTSwebI23T7oNsYG7ZCAf3QrbOD6goCVo7ujIHRwY7vGZIZONNx
         ZSBcySZxw6Z0p4EKNUSQpWp0ILKXLJx6zaUgBXTJSpiq2/+XkcVvmw3KN+NX1Nljp3pa
         GeveKDUkcDp0e01yEDrLBmh3a/G3scUr7Uls4lXWahe6pzxhlUP3Ly1EqdWWcdAxCdOA
         lLZzgQRYzcsFHJ40MiPRBBc6VChpcSjJ/m7kYVtOYwyjBow0z1HxFqZsCaNVfYCooQaD
         e0bw==
X-Gm-Message-State: APjAAAUm9XxdcYysIOI6MdsBJ0PBcZyzVfsZYrse3Z/Q2IdZoVnmqDE4
	vO0SzMOo3x0jBDMgPv6Wge5rBQ==
X-Google-Smtp-Source: APXvYqxpTGZvpWgh3B/13hmw2PjneVedGRJQx/K+8gMoxvZlX5+WAyBoiIYHTIJuxpmi52xjgooMAg==
X-Received: by 2002:a17:902:fe0f:: with SMTP id g15mr12247080plj.2.1567510676371;
        Tue, 03 Sep 2019 04:37:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:8209:: with SMTP id x9ls5541324pln.3.gmail; Tue, 03
 Sep 2019 04:37:55 -0700 (PDT)
X-Received: by 2002:a17:902:7c16:: with SMTP id x22mr1658404pll.234.1567510675710;
        Tue, 03 Sep 2019 04:37:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567510675; cv=none;
        d=google.com; s=arc-20160816;
        b=0/yFYkFVPu4YA+82C7OCwWXe36SgvnHAQysxqWxxUErljG6BkcaJTUmQAEc3Q0b3Sg
         bX7rZk4sH6K0qFv5ZyC158OYc/njpL31mMG6M/rAf9RPhADPGFCFi/PSeVbMTzlnyYSf
         uULufIWFB/Z2Xr+TLzvrqv7LiXBpsXhDkkyGTgH+doZ0/dvEUHQDUdVqAajcautCXwds
         BmmkHJO8NnW2ylFGo3CzjQfNJ+DKczAQOiNBjENj+Uvz3+GmkIg01myOUoLXm38/sY+N
         mUGsT5GWZwgwpmnuufGTc8fsk3IiMjVhwlVV056cjh1XG3KIvdiqJx4L6qcj9Evg+HHh
         ZrqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NVdJdOAmZ0hGRuynRqiYY+kOL59PW+u7NGSvQi3VwYs=;
        b=eGOOXo3V0/zb6p5Fp+tyNz/SEeQsFxurnBExMLFVhcX8pCbl1t8bVsngwbpK36KfZn
         YgF6/quYs86Kcx00NUXm8yxCHjDPs9R5i2+Tp0pq37Nyjl71GJmezCQH3gir1tPz/TRY
         zgWiLJpStMehkfgwNWPXQjal1AgIekXgDLLlUM36F1T/fNdD9qq2ltRfM40lIHdpQQ8l
         InFAbyRUoUSYAP38+RQKG2kKOtOnLI4hh/Tv9n9nF6Ft79f4oIuvaEgm2phbxNR4Q4KV
         MctSh4d2alS4/tI8ob2wrFGoQoJhrsZxBd2B9i7xyHIxtcwHusaXUNmmV5vUE6QgkwxS
         cl2w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHM8cp4i;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id br24sor21358450pjb.7.2019.09.03.04.37.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 04:37:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:9bc5:: with SMTP id b5mr4450619pjw.107.1567510675387;
        Tue, 03 Sep 2019 04:37:55 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id k5sm12461188pfp.109.2019.09.03.04.37.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 04:37:54 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 3 Sep 2019 04:37:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Lee Jones <lee.jones@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 1/6] usb/ohci-sm501: remove the HCD_DMA flag
Message-ID: <20190903113753.GA20198@roeck-us.net>
References: <20190903084615.19161-1-hch@lst.de>
 <20190903084615.19161-2-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903084615.19161-2-hch@lst.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eHM8cp4i;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Tue, Sep 03, 2019 at 10:46:10AM +0200, Christoph Hellwig wrote:
> This driver doesn't support normal DMA, only direct access to its
> local memory.  Remove the HCD_DMA flag to properly express that fact.
> 
> Fixes: 1e4946c4412e ("usb: add a HCD_DMA flag instead of guestimating DMA capabilities")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Tested-by: Guenter Roeck <linux@roeck-us.net>

on top of next-20190903.

Thanks!

Guenter

> ---
>  drivers/usb/host/ohci-sm501.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/ohci-sm501.c b/drivers/usb/host/ohci-sm501.c
> index 0b2aea6e28d4..c158cda9e4b9 100644
> --- a/drivers/usb/host/ohci-sm501.c
> +++ b/drivers/usb/host/ohci-sm501.c
> @@ -49,7 +49,7 @@ static const struct hc_driver ohci_sm501_hc_driver = {
>  	 * generic hardware linkage
>  	 */
>  	.irq =			ohci_irq,
> -	.flags =		HCD_USB11 | HCD_DMA | HCD_MEMORY,
> +	.flags =		HCD_USB11 | HCD_MEMORY,
>  
>  	/*
>  	 * basic lifecycle operations
> -- 
> 2.20.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903113753.GA20198%40roeck-us.net.
