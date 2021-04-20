Return-Path: <usb-storage+bncBD6LRVPZ6YGRBYWM7OBQMGQEZXZKN2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id A526B365B3C
	for <lists+usb-storage@lfdr.de>; Tue, 20 Apr 2021 16:34:11 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id f17-20020a05621400d1b029019a6fc802f7sf11488183qvs.7
        for <lists+usb-storage@lfdr.de>; Tue, 20 Apr 2021 07:34:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618929250; cv=pass;
        d=google.com; s=arc-20160816;
        b=an8r/h5Gx8dPYL8vyDcB+6+sTDpeod8dhH+pQFI4wWtxrcmxKJqAWcZN4LqG0jr4t2
         Mob9SYrkLlv/e3/0pVlxq4ROkuLHxO+3hqQ4epqS8kWS796pHCXeU7PlNSAWltDIS7/h
         TvzjbJs5wOlda+7WWkrzBq9F6Wu3Oil5bDOZ8ToeX21OgEXl5JposZE8lW0naCtcPbFr
         MkqT341roaaCLHejdBKGU8JQ7+NgXpfCoVwUzU4cpWrWtvwMqXozlXCyBqueuzT8HspQ
         ZjxGxx6mOfvBPxg2l0FXqgBeN7lXrJBQUd9UuolRwc4+n8L0/kjIO0amrRF39Y+gXTaG
         Xjfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WvYJQm+CxWq9/X23eH84xrSl2n+VA3LMEomR5aCx1kI=;
        b=Lq3d4qgKMD8vdA5IfBXcJwV3P5530xj7NY3gqFrUZYG0wplk4oSxxU+yKH97rJFc3E
         za4WbfX+/PoEaad010P4jqKaXssajAWwVfZ+G2+YqZnsc2MgZhQDhgSx8RFV+DdJq2J+
         +k4tVKNzaiOnN/Lz/fuYzvAlqw7GVbIDiyevfZpBoJFmZeMrVeZ2P9ZdbZXhyvjHVXKU
         +pCL+YQVtMqzFc+qruBlmtuaLglz0GW2UgImFD1uGOR84SJpcZg97uT0iZ2v33iQvRug
         eJxko27n2g2XxsbS2DHQlFb7TFGeB54ekZHVBIL12uIMktPiVHn8ZObgzRBVozb0MaSY
         /Oog==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+607a14ec@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+607a14ec@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WvYJQm+CxWq9/X23eH84xrSl2n+VA3LMEomR5aCx1kI=;
        b=fb74iCtV7SFnzGVc0wly72uzzEZyVPiJU1t+a4nQbDAIGF3nmVC5LB1po9il28HBCd
         G2Aeq7w0H31U3LdB3gwR26cZRvXyzVnSGA+XGjatagjYbrrZLjwaXw7UbdkIs6eDJNiK
         iKzwUbaEhQJKfWFpWhS5Z4ZFXm9/oa/GAKqZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WvYJQm+CxWq9/X23eH84xrSl2n+VA3LMEomR5aCx1kI=;
        b=NEk5+dKkPqDkNwZkMJ/MNPS4Eoyp3bvn7BKmbO+Q27eB0JLoEFhHr5EIrN+4b80XNB
         zNQv/aT1tgEHL0FDu8wv69ykjS8Ir4+NIpPhvtnR3DnO1ciBvaW4qdn6BmB0hUA5E7Hm
         LNrNJpuTN3sTuuji+YokWv0gomGSi/6+msq1p4m0SpzKJutQsNpCMWTKDyIBjZixC0OD
         qa271OjNJxmcoF+qP2zEOwtzqifjjaBiLbVJppU6GOLkx43Kh7aDjH+Vv7FA1WDGUYps
         TenGem42ZhucA6hAmKU/IPSLmC6zZnAIr9w6U/2+XLsSKrqCCy4KtH48h/5YEpz08P2m
         F1uQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5306a2iM4qGSg6epzH91KW/0Xll7w3W7/S8GnuEP8vnYsM/EOb9x
	wDpssHvjC/BohX64MpuGkxDVcw==
X-Google-Smtp-Source: ABdhPJw8Bp1RZLKCxTO5irahJPVc4xLHc0KhzJJgvoWQ++uiNgO3uAzY6Kj67QjZk7esTfeFNDCIBA==
X-Received: by 2002:ae9:dc41:: with SMTP id q62mr12660648qkf.22.1618929250495;
        Tue, 20 Apr 2021 07:34:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:6d03:: with SMTP id o3ls6945030qtt.0.gmail; Tue, 20 Apr
 2021 07:34:09 -0700 (PDT)
X-Received: by 2002:a05:622a:1454:: with SMTP id v20mr16871812qtx.372.1618929247295;
        Tue, 20 Apr 2021 07:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618929247; cv=none;
        d=google.com; s=arc-20160816;
        b=ViLZ6icT01r1hVD2a8T694FUwoGrDNQkkrZpd0a/JcIkuYX/iB1JxMwVbO2GxpH/0W
         S1NVER+MVPfHtMXADjnn2ACtPmHBR0qCYb6d/AXgd3DVGBDFV8r0HT1GgSvp0U3u4Jip
         55Ckq+3vqnme5TwgTslgtCiYoUyEDsUw3i4NUbQjbMSNPLs+vvpVtdY7U1bzQVTRvJME
         d/0YOFefTrM8q8kN7YdMJCzbH4rZ3CEuhYzDfUkM+HUfTwfJgyWFjw5YSb0Ss2Gymygx
         ArtVKYKDYvJMBa5Xv+o0uqXsr3smr7MMkGkIkcDy9WTsECg3jzxY+jqc3nK6uje+PAyu
         VSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/roaK27882FmUmBy8XONaZJq48f3PFvQozrgv0lrQNE=;
        b=eBHFkOm5yOR7b69JtEQzgLNkM/oe5n5je+M79LT7nYrBCWAQRvu/BqCrSza0OU05XW
         yauwmtsGThwh0VGJnLYCPvD7PbI3xPdmmEyogPYiHSHhiMQM2POCL7218lhZeSm4KwOk
         84m5zqDM2ZeNpwaz7Bt62lbiaGoiCPZqO28wY7T2+CGPpwZJtSkvNJGLnjsqHltmgv2r
         aR/fr5m2Tr5qpcUEuklk3YT41cfvlknicuwiNkTguCbZ2y6WB7nwYHUcc2/83oUhnO6K
         +gNr+cP2DJvF5ha4eVOeNgnL87gZgsQW/a5kQC1+h6yy/mOSDdktbXjCK49Qu6xyaUkw
         bfEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+607a14ec@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+607a14ec@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id cp16si11757924qvb.173.2021.04.20.07.34.07
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 20 Apr 2021 07:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+607a14ec@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 172296 invoked by uid 1000); 20 Apr 2021 10:34:06 -0400
Date: Tue, 20 Apr 2021 10:34:06 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Colin King <colin.king@canonical.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: datafab: remove redundant
 assignment of variable result
Message-ID: <20210420143406.GA170810@rowland.harvard.edu>
References: <20210420113818.378478-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210420113818.378478-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+607a14ec@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+607a14ec@netrider.rowland.org
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

On Tue, Apr 20, 2021 at 12:38:18PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable result is being assigned with a value that is
> never read, the assignment is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/datafab.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
> index 588818483f4b..bcc4a2fad863 100644
> --- a/drivers/usb/storage/datafab.c
> +++ b/drivers/usb/storage/datafab.c
> @@ -294,7 +294,6 @@ static int datafab_write_data(struct us_data *us,
>  		if (reply[0] != 0x50 && reply[1] != 0) {
>  			usb_stor_dbg(us, "Gah! write return code: %02x %02x\n",
>  				     reply[0], reply[1]);
> -			result = USB_STOR_TRANSPORT_ERROR;
>  			goto leave;
>  		}
>  
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210420143406.GA170810%40rowland.harvard.edu.
