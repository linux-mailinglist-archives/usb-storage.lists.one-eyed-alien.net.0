Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOUYXSMAMGQERNTCSYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id B07545A7767
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 09:22:35 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-11c438debc2sf4063138fac.14
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 00:22:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661930554; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nh3VCscPJQtKg+C2aNyGyXTucA0iV6UoCv7lEDSA+MeLcilG4IEYy8AbOqJk2cX669
         w4ZcQL7dKgYdnWXigB7oCR7H02dcNf3uBHogkBUtOzJsKduq+UZZH4Jtska7gMfR/MMb
         mBIpqSbQRWHXb8xzKOSxctGX39K54Z/fNXpIxq/5HMHVct71G0HBSyNmnlsF/CZOybJx
         9JFEqZlgmCfsTwGk7cv/qPrBv7pGGrYaRrOyQhQLd6iAB7tPlC2wxhy0i1myt07+gFXi
         UpLkWXHDLRxcOlVHmdV0KqwHtDWjrGvXyRpdsYZHNA5i3eMmWqQ3boh/0/ofnsHlM0XP
         ffXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2gtg1RY13RCXzqsbuteNzxXtlQVboDdBPZzBihvKTGU=;
        b=Y/Z+Xb0PmvzezD07H0Cumb5oQIrsydsdO8aVGVG+IkeZqgxgvMDFdNzunolucOq3Du
         O6GS7ZpSXwc27lOJ/WL40Q4tycmxCIcTOdSSOR77lyull6mYuCCuuhHz8COY/eDALHkX
         I0/b2pLqkEhlwMwrd1WUcjlaP12VwQPAUoWZPz6yByDKw/DrkG2Vu6JOGuS0FQYemvUC
         /yuTPhV/q9yPEZ2LIZ7j9NSQqOLfgF/a4v3VJ88eY9g+Y0CFRLwqhVRPDlaDWCh63H7j
         LwLqm8JkEONqwyVp99wv+bP1+Ojto6d94lAfKjF7AtgB+rwA4sBD1IhQ6NMvpCx9eAVr
         zdJQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=sgGPAKin;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=2gtg1RY13RCXzqsbuteNzxXtlQVboDdBPZzBihvKTGU=;
        b=GuQDXT7opYUDWT81gB6aOEEZ8JOpafDzR+28GeFDszyVq9RKENIGdJ/uEeqoavZr6k
         RGzr/BhBSSk6oYajH30n0EzrduIvaMZ1cBKjHW7jArDVD0llqUR598+RXoy1Jx4xZe32
         IXbWYK52iMIIx12vmf7GK+nsYbat5aaXFoFkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=2gtg1RY13RCXzqsbuteNzxXtlQVboDdBPZzBihvKTGU=;
        b=pcCKiwv1N9NuKvzNqywatb9cX+nkhhzLpHlrqfmRE0LPo6oqGaRW1NnwuN7tlqIpLh
         Y0gAN4k54O3rUf7g0N0Dj1GI50AWILak/Tp334cjoNy8XF5Bet3dFcT/0lo8tK7XmYex
         XNiBn9eRvce7+UeKcSiDOxehmefvAvoeiIjc5ejsnNK74AhC3cZCws1OvrMuUq8VaFKB
         P842k+HYeBwUwOLJcLsj+6XlU2ZBJ+Xs2/FwO3yPyOgvs+5Da0D3S1AxO8FjxpPkkhIa
         FNJcWxr74g+Wm+6pB9FvOWwejnNscsqefR0KWigZuaG819oEpdQj4g917IHbQGfCp1MJ
         GmoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3CPdD0N6eyDaTIomToSxry7Mh25aGadJm8lU/Yrxj6s1sFce4q
	q7yXbr9eUQQ5pCfGzr2DQW4Nbg==
X-Google-Smtp-Source: AA6agR4eVeK2YCNteD8pLs2N48rsEVyDXiMvqH+Iq/D3X38FLhIBzOlK12XMv2WJdWhBqOG/8IW/MA==
X-Received: by 2002:a05:6808:124e:b0:345:b825:fe9f with SMTP id o14-20020a056808124e00b00345b825fe9fmr717789oiv.142.1661930554170;
        Wed, 31 Aug 2022 00:22:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:8d8:b0:33a:322:8c2e with SMTP id
 k24-20020a05680808d800b0033a03228c2els4192949oij.0.-pod-prod-gmail; Wed, 31
 Aug 2022 00:22:33 -0700 (PDT)
X-Received: by 2002:a05:6808:216:b0:345:e239:8b56 with SMTP id l22-20020a056808021600b00345e2398b56mr642968oie.268.1661930553665;
        Wed, 31 Aug 2022 00:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661930553; cv=none;
        d=google.com; s=arc-20160816;
        b=zr0NOkjrWkb4/9ohwhnxL7azEGJ7EoPJDx5Cw+bSav/qAwjQhH4X4BA00MC20zs9Zr
         28icRZlbUjVpTKB9RrozcJJADi7qKYvivF/SkiAjApJOUf5DVRqnug7EGGuS56y05Uol
         QVH+O8zAjVcAnrGUSaUsp6D8HiAL5BmulT2BrJnrR/Y3nXgwk+xIw67pAqoM2hatfMlo
         LJ4fyNadQZ5oBY5Y9h5K7EUmngkSSHyW/XJsl1YEFhNHMAuVYdzSbL9QE/ZoB6w0Ek6G
         1C2ohxLRc2KbZhy+KMbxJxtFlC2LLyGLqZFkO0Z6CycsfqA70tFJ2wLE/ohOokezMQvP
         9ZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KjY6Skrh8v0kp/xOx4uO5IThbszqn8hBJro++LMUnIA=;
        b=H8xNCuI9LImvFXR4jIn/ghOf6DiBtgCaKlZZzgMJfBdWfLLq/hOrnG0GaDKgXGelBn
         pNGLu/UDb22EuvAuUgMO8jRDBCndqGjDAS1BVGs0lwkpPyCaS35s9qkA72gO2hVc079i
         dywg/4HOaBckfzzw9ZI3ic/NJ/2KuUyyZ0EveU+yvOmYDxBp6dTOpaKBSQvYYnrqPZPD
         c6/UI+yIDOTysSXflzzO1wRwnveKs1IO/aIsnh+OAa7OldK49/Wo4/fcm14pHGOkmFN7
         mUq/IFB43xj9jj/FwiZmDIHPSJhXgek/pzu8azMGATwYnVCgijSr2H2UmGpY+8uLZd1t
         yLnA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=sgGPAKin;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id fo35-20020a0568709a2300b001189a88f9d4si9390690oab.118.2022.08.31.00.22.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 00:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4D2926184B;
	Wed, 31 Aug 2022 07:22:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51156C433C1;
	Wed, 31 Aug 2022 07:22:32 +0000 (UTC)
Date: Wed, 31 Aug 2022 09:22:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zenghongling <zhongling0719@126.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Message-ID: <Yw8MNa3vPEtkIQsj@kroah.com>
References: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=sgGPAKin;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Aug 31, 2022 at 03:13:51PM +0800, zenghongling wrote:
> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
> several platforms with the following error message:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000 1b000000 05038000
> 
> And when running iozone will disconnect from the USB controller, then after re-connecting the device
> will be offlined and not working at all.

Plese wrap your changelog at the properly length here (the warning
message is fine.)

> 
> Signed-off-by: zenghongling <zhongling0719@126.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index cdff7dc..bb0d31d 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -215,6 +215,24 @@ UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> +		"Thinkplus",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
> +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),

These need to be in sorted order by vendor and product id in the file.

And all of these do not support UAS?  How slow does this change then
make this device?  You are defaulting back to the old-style usb-storage
protocol which is very very slow.  Why are these devices exposing a UAS
device if it does not work at all?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw8MNa3vPEtkIQsj%40kroah.com.
