Return-Path: <usb-storage+bncBCUJ7YGL3QFBBPWLRXVQKGQEC6VUN4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CE39C88B
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 06:53:20 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id c9sf9004061pgm.18
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 21:53:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566795199; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLiZ2DGb49l4HmCZ/kqs2YSPShmsou4c1KYkeE/4Q+P9HFarIsFvITNMuhCqroofzq
         RZYGi+UL8lmrGigiER+10p0UvVXgVFoAc4t36hNJAYZJGiBwGfv+JgiP4V0w/yoOouMl
         4sBMDd0IgvJWroUVZLdNnP2haffVe2rJRmem4sBh1RvYP2Szyxz5k4sG97ir1FXI8qHw
         H7hzbv2tLWzBOie/WT+xH7WRDueK/BlOIQr6T21++vaDksqILTDiteBwfvh15OwQdDXL
         p0+DruwwNDHRcJlf2M0JcNaVKuJ1vAbfBd/jIIFd3UttuPsyyj1gNm9lN5VtClW4vNek
         Kv4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qvkiKFcX5GKN95QqTPSpPIneAQyQhT3cXaVE4JT8s8I=;
        b=CoVy32XVpSwwCJVTKZH+uCb/p8lht4/7anIevN68mCvc+ZoTeMzYjDOxR2PJCxL73k
         g3ZgaXyGJTpNt27FRyL9iAwC+fk6/bdN8x3pGGcWNXpIu53+GBe20uKmyGuq9BXa8Opm
         ZQ4b/G36IIHqlwe955S/qWmHdOp7P5kRFmPKK2VoQXSIn5h1opk+PVQYYyIdmv4R1BoF
         aGe8lYW0bI3BEDqeTfEKyWh+QZ9t3rElf0wTj2W42fCIU6d7ZPgH5noGerGydDgyc9qf
         hd0zZYJwV9PW3DgAZGnvTEDQ0ajTDzlHZnsydAAaiuwUKy96ceIZMD6EOpNUEKIQubdd
         vPSA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cyAooLrK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qvkiKFcX5GKN95QqTPSpPIneAQyQhT3cXaVE4JT8s8I=;
        b=KjDM1wU7TzCjtNVYAPsjR7MhEphhV7G2t0NVH91/WV1YeYvHNzxK26u9O1fGG3WGuY
         OOmBm//8ObdJGJAh7NRVqXdhhTsdokRkn1UDkAiZ80Gmb4wk7DD0PsPBOWrO0Q82Ivdn
         YZxOGdoP1qCVgBhH/YJxXc09/wCIpamGRYEec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qvkiKFcX5GKN95QqTPSpPIneAQyQhT3cXaVE4JT8s8I=;
        b=a1NcMYWyjWG5ba25IWU3aSma9KMIeycK8GB2uvr//hK9+EPNiRsTVG4DyLFfcR6z55
         RBhHwHd4rSL58rET25qXDNLu9xmX9l4L0GhRTat0gQmHKKA2+pzlO2NUUQHQ/c0qNRjI
         EUOrq0nCKkyR/J3TYemJHTh1y9nlxRpwqu9movCP3XEGPvu/3NTHV7PYc8iMT0t0Xtuu
         55NRa0GS5LT41QoSi1kAaAtkge9+eojahX693oA7sIBVJ0l5PNYOm33LohHyIgG6/r3B
         //mEqWascjT6jB4EXCUen6xz3o8K43L5iCM+Qb79tOwx9STb3aLLcEU8oE06t1iNo70l
         Q60A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWKiHdDADNyBbwXVvuIR87t6d/0SDX3Mk3xzGK32+Gn2Vw18Rmf
	jYKi4GUtvHxKF/sc8uUqBPDmLg==
X-Google-Smtp-Source: APXvYqyYsPNNeexGu32zHUeUXx/RbUA4mGdOl8Sc903MUQ1SD/OT1g7Jg04IWzdNM4AkXt3ElTl6nA==
X-Received: by 2002:aa7:9092:: with SMTP id i18mr17941142pfa.101.1566795199018;
        Sun, 25 Aug 2019 21:53:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:3742:: with SMTP id e63ls4342626pfa.7.gmail; Sun, 25 Aug
 2019 21:53:18 -0700 (PDT)
X-Received: by 2002:a62:e516:: with SMTP id n22mr18301510pff.105.1566795198485;
        Sun, 25 Aug 2019 21:53:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566795198; cv=none;
        d=google.com; s=arc-20160816;
        b=J7l1N/3nvKKpr28LaU8bHoqtvl2DuYs1HNEfn/JJ4cQ8iZmtIEALZ6yb0oBHmtBVvA
         bFH87GJtzrcCCRA4ZB4sCS9J/TmoE1T4Ilax2xzIsrnmWZC2YPslHZNq0Q5pWk1wTipI
         O/v2CAaFsCnN1pSvayFvCv7tx/CAcMFB63GZ7fIQr/v8MY/RZgXZDbppsNbdZWefVZnu
         fUVtFGQCbo/fgQjaX7WSYLUAs+m4ACeeonaoethThazBXCAqUT0DXAYMDamFlsywhqRx
         Qtf5Z3Is4rB1Uh6mzTy5AZ9sGcLKm352FwtHCHEVXwDibl3A0Z64ccNxJlfuc05nAY0Z
         sidg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rCEy6FCyBG2KG9/dWnxBzMlgYMgijml/+3XO3x0xwNE=;
        b=q/HGDBPkkHAsNdfF2CexZixCfDGrc9mbA0KeCgfWfgsAlFd3ms2V87CKIyHbXbtBPP
         MDdhU/LbZLkUpb4f81aUp6sVJDZwSGwl8WzoEvFQMqCsUP23MsijbqpAc4gAKwB0GftF
         NokSEsMa7lcVoKZPIP9DKTd0RBkUUoLrbOTCcuDUyu2xwtEtLmTGA4y+Z4y9K55kva0a
         OefKLdmL8QITqpKDoCSL47q6Pjd3bTHmjS9WYycR5P38Z2U6593mAvrPfetqMVDztd7K
         6+EC523TotN5c6HuTb8igpQtmsiCXj6R5SsTo5VsTYoC5f6ssxr3e4yi/VKPbrorpdjV
         Cdow==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cyAooLrK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id i3si8619180pld.357.2019.08.25.21.53.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Aug 2019 21:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB4C92070B;
	Mon, 26 Aug 2019 04:53:17 +0000 (UTC)
Date: Mon, 26 Aug 2019 06:53:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 1/2] USB: storage: ums-realtek: Rename
 module parameter auto_delink_en to auto_delink_mode
Message-ID: <20190826045315.GC1678@kroah.com>
References: <20190826044630.21949-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826044630.21949-1-kai.heng.feng@canonical.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=cyAooLrK;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Aug 26, 2019 at 12:46:29PM +0800, Kai-Heng Feng wrote:
> The option named "auto_delink_en" is a bit misleading, as setting it to
> false doesn't really disable auto-delink but let auto-delink be firmware
> controlled.
> 
> Rename it to reflect the real usage of this parameter.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/usb/storage/realtek_cr.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index cc794e25a0b6..4d86cfcc0b40 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -36,9 +36,9 @@ MODULE_DESCRIPTION("Driver for Realtek USB Card Reader");
>  MODULE_AUTHOR("wwang <wei_wang@realsil.com.cn>");
>  MODULE_LICENSE("GPL");
>  
> -static int auto_delink_en = 1;
> -module_param(auto_delink_en, int, S_IRUGO | S_IWUSR);
> -MODULE_PARM_DESC(auto_delink_en, "enable auto delink");
> +static int auto_delink_mode = 1;
> +module_param(auto_delink_mode, int, S_IRUGO | S_IWUSR);
> +MODULE_PARM_DESC(auto_delink_mode, "auto delink mode (0=firmware, 1=software [default])");

We can not just rename module parameters, as that will break working
systems that have their startup scripts using those names :(

sorry,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826045315.GC1678%40kroah.com.
