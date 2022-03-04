Return-Path: <usb-storage+bncBD6LRVPZ6YGRBI57RCIQMGQEOAUCZYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 866E54CD632
	for <lists+usb-storage@lfdr.de>; Fri,  4 Mar 2022 15:18:12 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id t10-20020a37aa0a000000b00605b9764f71sf5559081qke.22
        for <lists+usb-storage@lfdr.de>; Fri, 04 Mar 2022 06:18:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646403491; cv=pass;
        d=google.com; s=arc-20160816;
        b=JPhwuJUuC6fxp6C3ElpbfP8PUnN/o3DKoqAn2GnVP1T/kdYgzkVKOC1Ta8RXWHku1U
         HR0mnAQvqBc1JVohdlwTpA463z0MD60AO1adA1c771bcAXTvyUnv1z+3mveYi2oPiSqA
         jh7+WNDyUs/tG67EyLpqXcLLaKK4Jp5zaiZgwiR2jI9O0U+a9EXOLjO9ua1TlY+lxhW3
         FjsfkCbt1lUN2esJbfs3giF4YlpFKSwWtKcDq7uFEsZZoPapqTi9UcChMByC1njgb+0j
         zCyNaEqDBFbnm8prcrcNA4JmCLosYcLXf9/w+m6RgL5TcmDr/zNwdFDyZ2YdatoaIGhP
         1Ssg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6dRPwehTAXYC2WRXjMafxReCCMT3O86r0l3f92hVDRU=;
        b=jeSqTCZEPK078MiYPUN+0mQWiowG21V+zTGdowVmxvATrQhCpLS1Vl0qgaJx0y3CqA
         GvzT4u402bvTkcYQs9H7KiriXndoV1s23BuukhXi+E3Hj0YgzXdMoxCaf+0H5cXPK6dG
         vBdYe2tHGg44aI32TMXOrQkcKvvKdSoZCs48X0bM5Dv7kMpWK4pLQdtTINxa1efrQDom
         tNDB4bVl0zUCwPFfRKRuhYdruAppE47n20iE0gn/3/j+RzcD/XDOre+IO0EYdZ/mQ25r
         a04USclYhOStFmS+NdMHWByU8YdfW2Q7+2KRnWK14XFaiDoVE8oniV9GcGNWO1PwuSV8
         KJ8Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6dRPwehTAXYC2WRXjMafxReCCMT3O86r0l3f92hVDRU=;
        b=M7l/QHC2h3Ml88Irr5L5EsPzIKq6UHTxQatOJLXkC8WBZ2Jqrzp+kcQI7UmVYH/SdQ
         CZ275KrgO9ZHwq/8fWbo2OaxknIUshs23qeNf4w4wsAMiATMMDrvGLjkd1xWeiOPM8Qj
         4aIL7KCgZ+Z5Hlj8v5kjXfAoacTmNTbkrYOyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6dRPwehTAXYC2WRXjMafxReCCMT3O86r0l3f92hVDRU=;
        b=XzS8oCVNVaIbdczh+ZqBP+5EH6mfSu31g3DuFMLuy/cDqhcXyZ/PWrwh3EknazdsEM
         xdWQV8+ShmHJTVz2YgvsLvEGruS2meOavBrC7Othwu4L/yOri/nWLBuJlk1G6oOHN6yI
         ucMUKrbxIbENlzFCqhy8T6xMPDU2LkZVYpZNLOY+7fKoCyOzpcwGCuWHeUx+myIZrWKz
         Uzx+cAJhDbJT3u1ZgBgXvD5KWvbuXqht9yIJimDL2GrzDgZSEs3nXq7oozEctkXo4yVb
         nBG6rdgvEPORDa8ivZ69YS7BdTGtzetP1G22I+XLh0nqtYVm3AXuBa7impQLHln2KThj
         7msQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532tpAQUPy4pgyVlP0gH+/BCeE1XcEOkUy8nf7gwhUWBxrVHQN0h
	03lt7yfy0KjQKBRhPG8ERC39RQ==
X-Google-Smtp-Source: ABdhPJxYtyv05f6ayJSenpQ1bdg8giSlgjQ45Hsk3ma/HhfmvpEj3ZXWTgY8rywOHWIo+8tfK9ES7w==
X-Received: by 2002:a05:622a:1653:b0:2d8:a3b2:ab56 with SMTP id y19-20020a05622a165300b002d8a3b2ab56mr31818399qtj.124.1646403491343;
        Fri, 04 Mar 2022 06:18:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5ca9:0:b0:415:83c8:776b with SMTP id q9-20020ad45ca9000000b0041583c8776bls2432536qvh.4.gmail;
 Fri, 04 Mar 2022 06:18:10 -0800 (PST)
X-Received: by 2002:ad4:5c8d:0:b0:435:4f89:3bb0 with SMTP id o13-20020ad45c8d000000b004354f893bb0mr1567500qvh.31.1646403490565;
        Fri, 04 Mar 2022 06:18:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646403490; cv=none;
        d=google.com; s=arc-20160816;
        b=DXMf1eQQQ8pqgnCEE0NNcAsnq1MqbGA7S9km/1yGGE4wxwODreCnYusHWlpiLVZQVA
         nNcW7UgeumnzV+JshITHm4SI8u5DDvyzhSxFtLjfju4PsxddzK8u4rqZpzJc+HJvis8J
         vPjrHqtVg3Dvf0qu+xlBVJDhcQsbv/1tTse5xGBdiHRSZCWt5VBe53QjQz0wltTVEvot
         xBrRc9p3m0iHw1Dj3aWDLU4x3blyg+tYfeFfC4rN2XC6ksjU4gd21RTAcKKk7qmWeSCX
         D/QunVCkmwrRBl+2+ddJdd4EoRqrVaYc/PL0ycW7IwNQNqExRJyG3/EIZsEGlCaHEzY5
         dSlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=mXWrRLSjaI5WoiJfKwQtO8mzN3WEqmEx2N3T377WH5A=;
        b=h2+52TaNpq1RGDnJHLb1E2eUxsV0CwGzYIFSd0p1XCwg0eTx2A42+ePR+A/JvHp6jP
         1is3g4EiQsKOEchWm229UpqE9704s+ryV35ZkZQZFKLZmGkGRTIkaEItXs58rRp3U3dN
         7AyV8DKLSZ/pEeg1lEZP6cNPMNok+/HeJnQuLMuvZ/VsIyfkP49nF5iMLzxm6pXfe2eN
         JuZHtx2ouB02n3a8+4utr1BglyiD5L7tXDXrtOfC9DR88ww/vXkWAvGtihAE4kGPLIB7
         2tiKZHe6XCh1XK1pvnBdsZs1IChfHBlxkQPer/4W6GEoPDlxz6dw/Ki/LhITgHnhXlUs
         cIhw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id t14-20020ac865ce000000b002de1b2cb5e0si1559648qto.451.2022.03.04.06.18.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 04 Mar 2022 06:18:10 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 1315410 invoked by uid 1000); 4 Mar 2022 09:18:09 -0500
Date: Fri, 4 Mar 2022 09:18:09 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  Adam Cozzette <acozzette@cs.hmc.edu>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, kernel-janitors@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: storage: ums-realtek: fix error code
 in rts51x_read_mem()
Message-ID: <YiIfoU7vVIf6Bbrz@rowland.harvard.edu>
References: <20220304073504.GA26464@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220304073504.GA26464@kili>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
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

On Fri, Mar 04, 2022 at 10:35:04AM +0300, Dan Carpenter wrote:
> The rts51x_read_mem() function should return negative error codes.
> Currently if the kmalloc() fails it returns USB_STOR_TRANSPORT_ERROR (3)
> which is treated as success by the callers.
> 
> Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/realtek_cr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 3789698d9d3c..0c423916d7bf 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -365,7 +365,7 @@ static int rts51x_read_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
>  
>  	buf = kmalloc(len, GFP_NOIO);
>  	if (buf == NULL)
> -		return USB_STOR_TRANSPORT_ERROR;
> +		return -ENOMEM;
>  
>  	usb_stor_dbg(us, "addr = 0x%x, len = %d\n", addr, len);
>  
> -- 
> 2.20.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YiIfoU7vVIf6Bbrz%40rowland.harvard.edu.
