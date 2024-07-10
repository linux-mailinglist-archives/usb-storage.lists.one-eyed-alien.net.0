Return-Path: <usb-storage+bncBAABB4WRW62AMGQEAEQO4NA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD2692C818
	for <lists+usb-storage@lfdr.de>; Wed, 10 Jul 2024 03:50:43 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-25e3350651esf6073200fac.3
        for <lists+usb-storage@lfdr.de>; Tue, 09 Jul 2024 18:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720576242; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0zOjL/0mopbfNxqQZ25ylp4wT+G6SOwzqjf7P8hJKP2+RVO6whB3XysZgYDi3mpt1
         yoqKHnTHs28lnp6+uPsmSp8K6VUwH9Covw518awsD6yOgrl4/v6oQ3IERYt89KHoBw/g
         MOjeQ+kVX2AzaMH9wGNyEz6S/1GGiuF08UhcEd34CQX6tCaYgVdqlvF/oVs+D660FApZ
         bEYZwd1CpKi+sfFFdVCYqxRsYlwNrH+6MxodvH5B+kAVLol51dXBmL4xnXWSEv3DFqrs
         sgNrH2DMfUXYc/Ql/vaVYFJd+aFC6NSHlX90oRv7ZbJliSjRXV0wJu75vw2oR7yLAPLu
         bT6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CwTa9CBifY+aV9Kcoh6H2lZEntCIDIDXS0ECEjYre84=;
        fh=sD76cTwIfGkaFmcfGWAOkzZJ+b5E55iHPwdri8tYh1o=;
        b=jBm6QlXJijbDtHTdXDMEtHe3i22jMN2ZV6zph1atbHNBL4ymxS4spWm9pzoD0hsV+M
         wdIKbcrh9DROsG+YV3oaIPwGq5DFg/kFpY6W+/chDgg73D8q/BPl9D3Sr7+3+AmMSQEQ
         t2Ek6UC3bPX/RAdhPRM/kg57NqZtXWsXoliTPzfQSdwR0NLYzebQa3vMCQGs3Yi11RUo
         qcxdIpb+apy1no+OMd7NqGRMkxXV9XlRtaLTQeOA3frsYbwxFjzxaAE7RJdL/CYDrZVa
         TIcOQ3E4AeJhYoCxiru9KHFmiEaxVoke9bj9KPt/Gg7xBZdOT3uTpgcI5Qu834tDSOXv
         PXng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NE207wwx;
       spf=pass (google.com: domain of peter.chen@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=peter.chen@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720576242; x=1721181042; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CwTa9CBifY+aV9Kcoh6H2lZEntCIDIDXS0ECEjYre84=;
        b=WjVrPVBXYe/Sorjn0LiOItOLwQJGakaApgQWgwpodWaOhFaPnnIHmniBsoicwv34la
         +qFhlIfhFEXuSgMndXhIOz4/z2a7qLRC/Zz5hELX818F24dVbOeIQ0/vzsaruqNTcoBb
         MgT6FHOwxvJwrKnS2UjgcaaR3Mc82ELHInLjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720576242; x=1721181042;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwTa9CBifY+aV9Kcoh6H2lZEntCIDIDXS0ECEjYre84=;
        b=rkuvngR++5Z+xz1LYlCXKy+CEjgrxEthsx+bhVThGR2N/Vi1ktsarBPwyQKuDYKM6i
         8QxKcYA63xzNhianSuixaJbAzqJfeVIAShJxJBrV7ttmIXYHqWVKIFfWrFMUvf+BU8o9
         gPeiRHp5Mx9jfb6kTObc6WcgsYNPWC7iB5CDbXMfWYZx+vT02DDnO/lGPpNQxXfmWu0O
         z/1VNM9w6iLZVDurnuAmT2h6q7ZI3P6L1nnNZu/S0LAEL+CrAmE2fSfennoL9xqWPeWb
         RZVz88C6Qefjbw4lrDwfrzsWAY60mVYRgTAgdeWPOLkWob2hXnt8iCLuQ7YFrM73PvNL
         Liew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX6BTjX7kiVX62IrAJHzFreswLnjw99QvSMobCvVSavj01GnlANW5lLjmPfS0TaIJF9My9KKRvryctpUj1Ga6kT0aUtVvNPpbiw
X-Gm-Message-State: AOJu0YyeOeZZoMdRnXXtdKxUftrXMKOmKeKguBgBO942a6HUZEEX7Ers
	yOzJDDsS1msEPBKAxlOj31BjTKLB3QFM72SMGTZph56OIsk0wOm8fyzOcAAMp4E=
X-Google-Smtp-Source: AGHT+IEf0erZ2BYBzewA/Q7wEBXS7LvL0x8weGaZM62CAIwvReojMRvbmKM32+pLQ39o0Y34pnuNQA==
X-Received: by 2002:a05:6870:fb94:b0:25e:c7b:ca96 with SMTP id 586e51a60fabf-25eae756de6mr3560686fac.10.1720576242180;
        Tue, 09 Jul 2024 18:50:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:3329:b0:25a:6d0f:1a98 with SMTP id
 586e51a60fabf-25e27ef6a26ls1801349fac.0.-pod-prod-08-us; Tue, 09 Jul 2024
 18:50:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXoiWHr5fXSn8SzAsnQIqpP/IK206E2tpRLBJcptskcraIsJefcdKRIEwe3YOO/AiswFl9+HEU+ZCiCs55P7uruJuSYZ4mQM8Ia9d3CQOuZS4KP3k0=
X-Received: by 2002:a05:6870:a116:b0:25e:cd43:fce0 with SMTP id 586e51a60fabf-25ecd43fee2mr78516fac.1.1720576241780;
        Tue, 09 Jul 2024 18:50:41 -0700 (PDT)
Received: by 2002:a05:6808:1a82:b0:3d9:302f:bb85 with SMTP id 5614622812f47-3d9dd6374dbmsb6e;
        Tue, 9 Jul 2024 18:49:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWox1IyUexunddp/0UCrwHdMvyPnJ6wtdwxnVv8fxzXJ6DkskwRvGTZDu3J+qG4w4h6QWl+t//XD+jNUtDk+RFA5BhpnLsq1lXREScsjHMqZ684ZMc=
X-Received: by 2002:a05:6808:1795:b0:3d9:37b8:dae7 with SMTP id 5614622812f47-3d93bde42f0mr5212454b6e.1.1720576183077;
        Tue, 09 Jul 2024 18:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720576183; cv=none;
        d=google.com; s=arc-20160816;
        b=U9pTgT84brL/MqV3NewCjtkod1LPNvckAfDrU8NU/gX0EIsZPk4hRu8b7o/zyOiIu6
         0BpoMMAYnyzIP63m5ET2cNSvgg/6oXaEYx1InYZ52C7vQC46BpmcEaPXSvWgu900a07j
         LyTcLSlOKNw0UsXEEqXBSQWP/wQz9kWpJhFmkj9/OH1NjFOCqxi5KE2VFQujHxrTa5Ht
         v5NlBzSY60g5vYgyppPqYwdlItTSiN6BZdYkkkqvO1/sKhYxxHpE1mVEvBu6U8QrcaUO
         nS08UX0usVDtuQZOQtgGJ9mfat+JhIefFPXKaV61/NxAjU0J2eygSKMaBQliTJuLNW6q
         4KLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rOs7ExCeGhjD7qoZPIUBpN/lSbpcCaH7fi9hFWfifTU=;
        fh=fWdn+Gj4f7TMPf4+6n1DOaggyL+XCuQ8zX83mnNR0XU=;
        b=vYznpaOjyzrVGb7Dcb7x5/4ci96xp9cYxFVVP57JwNCtXNKeCpi08OA0Edm2NJq6oK
         7pZ4oqxWbf2aOV0rpjO1mDjXiG0Ox2uevCugUxRKHT2a4byYwFZ4dxmc5d9Rkyi4XWSL
         vQMSsmQZUhuskGmiSH+vBKYih75Lff6JICsGDr3Qj5A8q5WnCHKZbxqZ54F1c1hAmrWm
         4bPGTPg32AM4L7zYoyH1ScWSeh1vU9D2qRT+5nQNGhyDkdgP5wLMHkVGBrcUcSWUEpPk
         cDz5Exlp0ZN3ETO3xzPC8k9h+XD+YX9LsOv2Ab4paRgCPzWgUe/ltqYB9CDE0+TWO9Zd
         RpYA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NE207wwx;
       spf=pass (google.com: domain of peter.chen@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=peter.chen@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 5614622812f47-3d941ef172bsi652512b6e.269.2024.07.09.18.49.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 18:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.chen@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D33CD61692;
	Wed, 10 Jul 2024 01:49:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7534C3277B;
	Wed, 10 Jul 2024 01:49:40 +0000 (UTC)
Date: Wed, 10 Jul 2024 09:49:34 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Oliver Neukum <oneukum@suse.com>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	kernel-janitors@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb: add missing MODULE_DESCRIPTION() macros
Message-ID: <20240710014934.GA2914204@nchen-desktop>
References: <20240618-md-drivers-usb-v2-1-e9b20a5eb7f9@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240618-md-drivers-usb-v2-1-e9b20a5eb7f9@quicinc.com>
X-Original-Sender: peter.chen@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NE207wwx;       spf=pass
 (google.com: domain of peter.chen@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=peter.chen@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On 24-06-18 08:18:26, Jeff Johnson wrote:
> With ARCH=x86, make allmodconfig && make W=1 C=1 reports:
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/core/usbcore.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/mon/usbmon.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/class/usbtmc.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/storage/uas.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/chipidea/ci_hdrc_msm.o
> 
> Add the missing invocations of the MODULE_DESCRIPTION() macro.
> 
> Signed-off-by: Jeff Johnson <quic_jjohnson@quicinc.com>
> ---
> This is the remaining one-off fixes in usb.
> 
> Corrections to these descriptions are welcomed. I'm not an expert in
> this code so in most cases I've taken these descriptions directly from
> code comments, Kconfig descriptions, or git logs.  History has shown
> that in some cases these are originally wrong due to cut-n-paste
> errors, and in other cases the drivers have evolved such that the
> original information is no longer accurate.
> 
> Let me know if any of these changes need to be segregated into
> separate patches to go through different maintainer trees.
> ---
> Changes in v2:
> - Updated drivers/usb/core/usb.c description per Alan
> - Link to v1: https://lore.kernel.org/r/20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com
> ---
>  drivers/usb/chipidea/ci_hdrc_msm.c | 1 +
>  drivers/usb/class/usbtmc.c         | 1 +
>  drivers/usb/core/usb.c             | 1 +
>  drivers/usb/mon/mon_main.c         | 1 +
>  drivers/usb/storage/uas.c          | 1 +
>  5 files changed, 5 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
> index 7b5b47ce8a02..1661639cd2eb 100644
> --- a/drivers/usb/chipidea/ci_hdrc_msm.c
> +++ b/drivers/usb/chipidea/ci_hdrc_msm.c
> @@ -303,4 +303,5 @@ module_platform_driver(ci_hdrc_msm_driver);
>  
>  MODULE_ALIAS("platform:msm_hsusb");
>  MODULE_ALIAS("platform:ci13xxx_msm");
> +MODULE_DESCRIPTION("ChipIdea Highspeed Dual Role Controller");

MODULE_DESCRIPTION("MSM ChipIdea Glue Layer Driver");

Peter

>  MODULE_LICENSE("GPL v2");
> diff --git a/drivers/usb/class/usbtmc.c b/drivers/usb/class/usbtmc.c
> index 311007b1d904..6bd9fe565385 100644
> --- a/drivers/usb/class/usbtmc.c
> +++ b/drivers/usb/class/usbtmc.c
> @@ -2592,4 +2592,5 @@ static struct usb_driver usbtmc_driver = {
>  
>  module_usb_driver(usbtmc_driver);
>  
> +MODULE_DESCRIPTION("USB Test & Measurement class driver");
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index a0c432b14b20..0b4685aad2d5 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1150,4 +1150,5 @@ static void __exit usb_exit(void)
>  
>  subsys_initcall(usb_init);
>  module_exit(usb_exit);
> +MODULE_DESCRIPTION("USB core host-side support");
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/usb/mon/mon_main.c b/drivers/usb/mon/mon_main.c
> index 824904abe76f..af852d53aac6 100644
> --- a/drivers/usb/mon/mon_main.c
> +++ b/drivers/usb/mon/mon_main.c
> @@ -419,4 +419,5 @@ static void __exit mon_exit(void)
>  module_init(mon_init);
>  module_exit(mon_exit);
>  
> +MODULE_DESCRIPTION("USB Monitor");
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index a48870a87a29..9b8f578eef53 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -1280,6 +1280,7 @@ static void __exit uas_exit(void)
>  module_init(uas_init);
>  module_exit(uas_exit);
>  
> +MODULE_DESCRIPTION("USB Attached SCSI driver");
>  MODULE_LICENSE("GPL");
>  MODULE_IMPORT_NS(USB_STORAGE);
>  MODULE_AUTHOR(
> 
> ---
> base-commit: 83a7eefedc9b56fe7bfeff13b6c7356688ffa670
> change-id: 20240611-md-drivers-usb-86999d57ed16
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240710014934.GA2914204%40nchen-desktop.
