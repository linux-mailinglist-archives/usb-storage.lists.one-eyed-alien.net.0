Return-Path: <usb-storage+bncBCUJ7YGL3QFBB2WLRXVQKGQE46BTOAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1379C88E
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 06:54:04 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id k20sf9018744pgg.15
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 21:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566795242; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwQELpFD4wLx3gbOS8t6D8It8RUBakztoJfJVG6582fqHags/4UGm1/0UOvjM+LZ9M
         8l66hfmq4tJs1vzQaMYqEK0gQnEz4PJmff2HwMLxcQW1sliBe6d1XcCIdFqnJKeHMXxB
         Nz9kbiNS9+gbCBwSlj/QW+1TD6ewEYvVVHUjcEi2thIPBneArW/JjClnER5uWqj6fJRv
         ESDQ/9MbKYE1MS8ETekyoecBgjm8tgYtUQJIkNoWUuwBrZsoUb8NptBoesLm7XLpXPve
         ZCoMTSdei3Eq5caTuU3P5pzhms3+bp64dUJHD9ZW0p27BP+oiJetwFX+bE22E+JTyew6
         EDwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gnDr1DZiEn4+luzd9XJYiwCzXdTavL4t4tmJpa49m+k=;
        b=kslIsX4jDc1ojyTL1whs5ewaJ2C8YGt3sUp+goF+dmSudLL7L/WUrwP50OjPr7Xx1g
         KvU6AjIxbxj1G8BGwrJFiTu74x9aSBl0PWNWJiEUd2b3vH+73mGoOPnxewDnG+l1Fb2+
         TPWFZWCMoEl5U3ROUdHhNzAiXHmjH8uT5YneqhZEoabwWU3sdrI6XGkmryGDOx/1WWSG
         ceX1kLpywkN/gToh/a9g2NxMfnNGoz4xoFgLz6wPXgjhSp3gR2ZbdQAOO1sJqFYzq23S
         SE8e0xatFXgOMaKBh3jwy1RdjYoquNSfr3m722nFxmQIx/X+dJ5QJzWlu/kcrO2Oh25/
         osAQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S9KIOpNF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gnDr1DZiEn4+luzd9XJYiwCzXdTavL4t4tmJpa49m+k=;
        b=UZJ1OIbLrO548SHc/b28nljwRwzbB+qeSNWtxG2BSBuwTPV37gsL8I9wXokEJVs2jl
         AKYljEhBGxgF8ezqtIs5xjQbNortxPVOHzGE4iFjOKFWPq2OwTBCWG/jgcVOprJw1Dll
         OtK3dwA3MJfp4hL3uKRarYgtn1PmVku2Dqu2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gnDr1DZiEn4+luzd9XJYiwCzXdTavL4t4tmJpa49m+k=;
        b=oqDxeBE9Qy+sZ7JYorWc5HtrsGTiXCgHgAR23Kb6b9MvVFNliphsPKaJQ74QAz+HES
         dPEtmGJMHW3U9/EgBi0E/oT3pT5N60HlO2tjengFWByxP+4JIAfHzvXmC/UuhuEby3pN
         LKT518ACT5eKQm42fGPYvM8wfh6QZEVYdxA4FyNHW9Wpl6zQhpU60mFEzI4SHZlj2w+W
         A/cDvlLSJhqazzjv87U4P2xJXJrzC5xXImyFjc4hvmDv1M4nC4Gi5GyQOoUhbWOPKkJI
         1ycNcirn1SZjKHMw45KMrra629n45JQf9ifFxkDuuMLZ0ay2Fj0jHFx9gdSRBkdydE4D
         JjmA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUNc2QTpz6MYAsvaAnK/vpbuuHk7ig1FslL6uflYhBzZI9b7I91
	YoJqhFNAT5uaFU6+WLEIWwhtwQ==
X-Google-Smtp-Source: APXvYqxiyR5CHsWZ6tG2ONOi+vFACX2JplcnSDUm6ufH+Fe3RLJHHWlVeXAUGraYf2zzJmd6s9e/wg==
X-Received: by 2002:a65:504c:: with SMTP id k12mr13755668pgo.252.1566795242616;
        Sun, 25 Aug 2019 21:54:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:644a:: with SMTP id y71ls4345586pfb.3.gmail; Sun, 25 Aug
 2019 21:54:02 -0700 (PDT)
X-Received: by 2002:a63:2a41:: with SMTP id q62mr14874657pgq.444.1566795242132;
        Sun, 25 Aug 2019 21:54:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566795242; cv=none;
        d=google.com; s=arc-20160816;
        b=Jtn9eR+D4Q6wQM1OAAyanb49LMy2PMeAjkRbqZNfsrbvZa4KXOQm6dwoJ9JnNpni+l
         LNX1oFuZ4qPfUx/c17LDJqUFvqlDGxjKmPgweZI/zsHU9kEjojPiL9rYElkxV2pauCN7
         yM2vjeRRNf83/bFgapBDQ46LOXYQeMqCdoz9y+VR4wfGpBBftvaiv/ofhFXPLDwslSHt
         lACrqv6IQxAUN4QoDGwUdbsqi4Tx0zHd2LhirecYCjBRU0OAqkUSLnTcNF5KUJatzmA+
         jk3zQ/MOU/hlogqagbCsCN3SrXtPPsIbl1hY0yvq/T+QLIrZlt4LE2PI3uRoM/7ADLdq
         VuUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8FV1uWFtf9lc50SxH+t8cdrr0KsDh6tNqfN268ndkUU=;
        b=OmKIuC+o0+xHfFwZkGQwsM1oRS45y5RIelZkvFkT5fYcU7tbJs0He+DP1lfBaOUTdB
         70L9aoVal8VQ8acdGCVHdHK6mspp4FAsUB3kpv4bDJuI2vqXRJbBhgvVeZcLg80b9S9p
         IhBKYPQYEaRhnZFTkBgXHUaZJRrfoSCl0+k4Mx7TCL3+D5wMrK5R+DP/Ltx9ja4erfQv
         YsGnIw9zGCPXzB/OGd3JPKbHLHHGzAQrzO2qbz3ejSrwM/dW4KDDVlm0j6oJQQ30Ewae
         Bg3Gyr4jIjyw60D2lckrqQGpFRI+6FTqSAPQLjTkqrHpoMlyqKTDpWcUsCLAdobFZpJf
         3cnw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S9KIOpNF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id gn1si8537390plb.9.2019.08.25.21.54.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Aug 2019 21:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 650632070B;
	Mon, 26 Aug 2019 04:54:01 +0000 (UTC)
Date: Mon, 26 Aug 2019 06:53:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 2/2] USB: storage: ums-realtek: Enable
 auto-delink optionally
Message-ID: <20190826045359.GD1678@kroah.com>
References: <20190826044630.21949-1-kai.heng.feng@canonical.com>
 <20190826044630.21949-2-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826044630.21949-2-kai.heng.feng@canonical.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=S9KIOpNF;       spf=pass
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

On Mon, Aug 26, 2019 at 12:46:30PM +0800, Kai-Heng Feng wrote:
> Auto-delink requires writing special registers to ums-realtek device.
> Unconditionally enable auto-delink may break newer devices.
> 
> So only enable auto-delink by default for the original three IDs,
> 0x0138, 0x0158 and 0x0159.
> 
> Realtek is working on a patch to properly support auto-delink for other
> IDs.
> 
> BugLink: https://bugs.launchpad.net/bugs/1838886
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/usb/storage/realtek_cr.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 4d86cfcc0b40..376f41d0cbc3 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -36,6 +36,10 @@ MODULE_DESCRIPTION("Driver for Realtek USB Card Reader");
>  MODULE_AUTHOR("wwang <wei_wang@realsil.com.cn>");
>  MODULE_LICENSE("GPL");
>  
> +static int auto_delink_enable = -1;
> +module_param(auto_delink_enable, int, S_IRUGO | S_IWUSR);
> +MODULE_PARM_DESC(auto_delink_enable, "enable auto delink (-1=auto [default], 0=disable, 1=enable)");
> +
>  static int auto_delink_mode = 1;
>  module_param(auto_delink_mode, int, S_IRUGO | S_IWUSR);
>  MODULE_PARM_DESC(auto_delink_mode, "auto delink mode (0=firmware, 1=software [default])");
> @@ -996,12 +1000,22 @@ static int init_realtek_cr(struct us_data *us)
>  			goto INIT_FAIL;
>  	}

This patch doesn't apply as I can't take your first patch.  Can you redo
it and resend?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826045359.GD1678%40kroah.com.
