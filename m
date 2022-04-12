Return-Path: <usb-storage+bncBD6LRVPZ6YGRB3MV22JAMGQEGUHHJIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6F54FE39C
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 16:21:34 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id t12-20020a0cea2c000000b004443d7585f0sf6497427qvp.19
        for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 07:21:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649773293; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwUStR3t2ppaiMnYjwx5Hy+a/ca9Sk2lRG10s90xaIL8GA0wVWolBumcfuI12E4D99
         04XVDOarcNbZ/gqx+eG9ZwD5TrEEi/mGTvJF+MYD9GQtqDnUTSfXAI1VKCuZNnSM1akN
         NVNKnXAHigp/wfcXWUPdOcbKZSWLaDy+szEduclwEVVrMxIbVXx1SG9uHdXUEnIZS64Z
         Us1E8Wa5prP2TVRSJBaTsfvSrSDdHrLz5XsGtE8NfNsWIrm6qRmI016tTuii0jTySmsc
         p3M6GJNd25pQaX0buQizeLSAfxR4grMSHktHqgGVrY99XqxUvyLNVilof2Boa2tHjkvi
         UEOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PoVpDD4X9Kr7amp0HCwUGDQS+f3vCm0SOE3Dle+/hh4=;
        b=g6fgnGkSz2BcFsWQlVel83lNDL4eIGZRbuRG348N1SWPlaqF8DGd4lTJe5Y7LHPHug
         4pvNVtQSrvfwsvC5I13h4wbQrm51Ittdyl9Ny1zwiRW3HrpJ/lf5OHf0mtFN/e0HyLss
         z3NGlgHE9xqxgtCAjnu1PP7AlGlQpXG5bNC3BQXcUuTDQlAgDetv7r/9G8z15LeQD+w/
         vWjmqox4wZcbsytxoDcQ8/zMiF4sDu5/TCt9nmNPLJoLk85tgyusK/i/VKU58aiElxRW
         KgnBIlY+XYiezUQMP+rZHh+jK5coVXeyo5+LeHMBpuY2G+Ld1wDVennb+WH0tWJUcOx3
         6ecQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PoVpDD4X9Kr7amp0HCwUGDQS+f3vCm0SOE3Dle+/hh4=;
        b=WqgS8BpDqiY97FVE3EJm7cOQ53lDA92dbjmQ/tcSDFFkNNHMaT5GP3E74k7zOG6tFs
         7IyzQnX3doBqTYoqJot4InFLrMfM+5zhjfTgVcNZiHUN2svn552FVxZV/C3RYE7qL1wi
         FYBXpLT+vLzvJYw6m+zRYru7QaCXshpYf/aTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PoVpDD4X9Kr7amp0HCwUGDQS+f3vCm0SOE3Dle+/hh4=;
        b=xTVXVxAC6qsiiKprIPhhwdg3rmebvJ/hdHEA9H40N+0kWysXLOuCsPWLLhnUbAaAkT
         GCK7d24RuCxyMd4JDzgAFigbTUvJ9heQTVzu0HtwE6GrEI7g1ylKQ56Q0ishufEXDxl/
         G2+mVOGMOeDv1mI08Dukks6Lmzi4UmOMFiZSDbgGWTMh7CQ3ty8rHUH5Sv3auh8d50MN
         jO6zB4e+UhM7S8buGRRdmbdvG3LZjg1t+9WsXOASuowj0TzoMLrw119LKZWrsR43f5Bq
         3KUVQPH5NsCInygU0rUzjr1I1cH4jw/QaCi2y3RNF+a+fOS/my24QkdeklywdSfOKe8p
         f8zA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530ZQNsjXqpo3MPqDgnesV0hWqcKoN/4PjmLso03YkFRl9cxs2HW
	m3ip0Rc1HaAtfo3K/gdNIZ9AQQ==
X-Google-Smtp-Source: ABdhPJyaCG8hrKsFoUAlwu8JhWZDrXUuvSmDcHoOHTxOSejgLoszKSAD3KeQbD6beq3QynOyvtVtRw==
X-Received: by 2002:a05:6214:2424:b0:444:44b2:3805 with SMTP id gy4-20020a056214242400b0044444b23805mr3931842qvb.74.1649773293573;
        Tue, 12 Apr 2022 07:21:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:57cb:0:b0:2ed:f06:731b with SMTP id w11-20020ac857cb000000b002ed0f06731bls10392508qta.9.gmail;
 Tue, 12 Apr 2022 07:21:32 -0700 (PDT)
X-Received: by 2002:a05:622a:5096:b0:2f0:edcf:bb86 with SMTP id fp22-20020a05622a509600b002f0edcfbb86mr1481622qtb.306.1649773292750;
        Tue, 12 Apr 2022 07:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649773292; cv=none;
        d=google.com; s=arc-20160816;
        b=zmcHEu6Oj/KNwYRIaAG2u837nDxYJMPacyODXz83iQgvIq3Ci5u2CqWnsG9XFgkdd8
         YPA4/U5AhK8XkOYqPSG3tzPYbZ/10WCIfMKDZlszvtWi0Y3cwoNL8/aG7JJ6ShBCnKkA
         JfwTdmH5+8h5dsQlKybs2TbJCTVU3ozKbmnlPVM1jouKmXMsbcJ8cjiDimFnLe/JLNZN
         ZSaeaug+53xtNJQpMm4vE9+97/a7pZBdAhbgxxAwwTKAn1WqFD+5gf+W/lz6bO8x8CKi
         LhRgXLxC57QpOwDTAuKjy0MRr5JecKgBar7n/g0WUOghql78KMd7tKwGHLYcThcmgxbs
         gsGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=t7kW8OKQZtm50/XNpKbngiIMor/PbtBS7/4BN9CHw5k=;
        b=lKJJLkWCJxVaOdLN5zo+W9EMN2vNJSBdJxNr8bY7/IIJI6oEOPgWa8unP+5dT0iJrG
         SVUAEqyZNIPfgn102IoWbBko8q7PlwlJvk5t86+O6uLc6D3IxmghyK0NK6FZLAreFQ3U
         6yRXMaOYlWIvAbpYsGg9N0DjO4kFkLBUt0i3S/VOpsgNck8qTnbUKgrp7lEsY704Y5st
         JIKDbT7QhjDrRSIwVP8O0Wv//E2A2LewSsGqoalKuV5FtSj8ndVEf6zCpO4pnb7Nvmgc
         ONcx2svfx6K6DcP856ylGcIogvuXeTmgovz2Q3/dtFD8jwGXEwrSyc926C7ynyrblL5K
         3T2g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id w19-20020ac87e93000000b002ebc8a07a66si6772223qtj.601.2022.04.12.07.21.32
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 12 Apr 2022 07:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 374931 invoked by uid 1000); 12 Apr 2022 10:21:32 -0400
Date: Tue, 12 Apr 2022 10:21:32 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Lin Ma <linma@zju.edu.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net,
  stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] USB: storage: karma: fix rio_karma_init return
Message-ID: <YlWK7BxeO45UP4ee@rowland.harvard.edu>
References: <20220411060246.9887-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220411060246.9887-1-linma@zju.edu.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
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

On Mon, Apr 11, 2022 at 02:02:46PM +0800, Lin Ma wrote:
> The function rio_karam_init() should return -ENOMEM instead of
> value 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.
> 
> Simlarlly, it should return -EIO when rio_karma_send_command() fails.

s/Simlarlly/Similarly/

> 
> Cc: stable@vger.kernel.org
> Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---

At this point (just after the "---" line) you should have a description 
of how this patch version differs from the previous version.  Otherwise 
we don't know what has changed and what to look for.

Alan Stern

>  drivers/usb/storage/karma.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
> index 05cec81dcd3f..38ddfedef629 100644
> --- a/drivers/usb/storage/karma.c
> +++ b/drivers/usb/storage/karma.c
> @@ -174,24 +174,25 @@ static void rio_karma_destructor(void *extra)
>  
>  static int rio_karma_init(struct us_data *us)
>  {
> -	int ret = 0;
>  	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
>  
>  	if (!data)
> -		goto out;
> +		return -ENOMEM;
>  
>  	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
>  	if (!data->recv) {
>  		kfree(data);
> -		goto out;
> +		return -ENOMEM;
>  	}
>  
>  	us->extra = data;
>  	us->extra_destructor = rio_karma_destructor;
> -	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
> -	data->in_storage = (ret == 0);
> -out:
> -	return ret;
> +	if (rio_karma_send_command(RIO_ENTER_STORAGE, us))
> +		return -EIO;
> +
> +	data->in_storage = 1;
> +
> +	return 0;
>  }
>  
>  static struct scsi_host_template karma_host_template;
> -- 
> 2.35.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YlWK7BxeO45UP4ee%40rowland.harvard.edu.
