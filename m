Return-Path: <usb-storage+bncBD6LRVPZ6YGRB3PV2CJAMGQEBF47QQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 576514FBF13
	for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 16:27:59 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id t12-20020a0cea2c000000b004443d7585f0sf3873260qvp.19
        for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 07:27:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649687278; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSH1VheBU/4fRpcWio6HV4qIx+OM2A/jafDwXxZzdQAZ5IyjJmGJkVa8LMdMB0nEsc
         D8kJeujPHJ4ZSYSmiFCickcop26fgr2kTWjdQ20MASHRwjt6uJ7+T/gRGzHaCcnU/DUh
         QupcCp9BWlvnCCgkfOiyWq11gJc3D7tTU3ZddmBmZ5pYu4b8v1B/wU9pacZpA+BmOMyB
         7oPHPDYrRr0N1Xs7PncquYK4bHhEHy8j0DBPYS6LN6r48x+5uNEu8bsBM48zR4Y7dMJ1
         oe2cf51uWI4j71GP2Qr0+K3THz6U0IgorHPQriwzKD5edcR6PbYBt60sCAJVO9lGrcvH
         18Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VLdr7vsDcRBlPW12Ql2DqQeafpABr8ZXPXtlXHygcbo=;
        b=OTh2KPCCWxTTpdyROou/n+g6DlKqFNvA2wEA2zKS3ljw8Gf9COEzp6XW86xo9tetml
         tNbpT0W14Pd5MzL9wsVOSZJbmiYq1R5WhldIeCCaThDdeAe3z3+V13MD/pg0HrxPVXMO
         rZ1WSYWrmaXLp5ncZRDen/jL+4W9cvd4SCMsIHJnsGcfFClIAtvDdOOoNvXuaJBSH5st
         6Q2B+Ibok7aNj4A9rRwJAjshPzXEbHVvvOyiFgu3uW1MmA9C6fNRSJdWUD2IJv0tKfMj
         KtJ6yvZiUaXE8twYzZ4R5XqS3ovXTdn+xhhhi+VTmdVSSZrZb/pbjq4TJvWzIdj6+MWA
         lMRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VLdr7vsDcRBlPW12Ql2DqQeafpABr8ZXPXtlXHygcbo=;
        b=EYFlNxgy20Jau5v5UmwYrbAUkGMuY7v0f3OGLKURsm79XXOEaSEkGrjpDsQDYuqbTt
         LQWOsmhZZY5/3ZFtXgJH8oyHMHFsrxre3E+j6mTt/JEAl17x8YYZt3El1H+TlwCMiMP4
         6iLnlXCTu73u+kM05N20nbHwcFAJSA478Bz9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VLdr7vsDcRBlPW12Ql2DqQeafpABr8ZXPXtlXHygcbo=;
        b=SfGoX/KqolFxf0CL2Nz6c1DVmAdzXFL/Bc4t/KD+emiX53/5JvX7aHtNO5LnEIH4Mo
         KXyCQGqCpaIldeH7VzPEtxrO3KarGSLdbtej5cLoTv+fncHCtG68s88eG0vBAjmB1ttt
         pDqO4dwBB5Yo2jg43sh2BrX57ptJwveruu7O4NY7et5lBtA03/nEaa/PpPYdpf/A1IqA
         bgRKzZjDBWstsKPRoU0vLU8L8Bg2oMaPAqWObo9+m9i7WAQTActcKUINPhiNsn1LHbkw
         1v0x5qgnRN90EjKj4bCnoAsf/FOgcQp/KV/8IMElVS9Bv5s8HIRSdvrQtzGWsx09KYmC
         MbZw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532sfvdjasz8EbZA2VdtCPLjmtxijvKGcg8XGJvmh+6Rt5C4TgvF
	V6SFahO3++Jx8GB9VXnyW1iS5A==
X-Google-Smtp-Source: ABdhPJwBt0wTxHrQycWz4+jg768ppMwzEUHqozrCMLWVlsm6NYkw82vA8aj+7NcG7ZKcXWgC79Qypw==
X-Received: by 2002:a05:620a:24d6:b0:69c:c03:7fc5 with SMTP id m22-20020a05620a24d600b0069c0c037fc5mr5855349qkn.414.1649687277651;
        Mon, 11 Apr 2022 07:27:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1a02:b0:69c:2834:71 with SMTP id
 bk2-20020a05620a1a0200b0069c28340071ls2227079qkb.3.gmail; Mon, 11 Apr 2022
 07:27:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1928:b0:69c:1022:d225 with SMTP id bj40-20020a05620a192800b0069c1022d225mr4888621qkb.262.1649687276807;
        Mon, 11 Apr 2022 07:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649687276; cv=none;
        d=google.com; s=arc-20160816;
        b=OKK7TBUAzhJT5KTlw3hz5zQwTvOIzKHvYd66rr7snvmgZEFij2HOLSkA7k1mcIX28J
         cxx/tiYnu6U5xIQEdoHL56TrdLeClxInTYeEldkbzfU85+16ay72A9+BUTZ1cejKlQzS
         hvwqR5KfSz4i5BRjnTFLFq2uuf0Jrr95oiS+aiAGlL59LMBRCRdz6qp7p9gu5cFUw7wa
         /1z6ATB5yCDFAYFgO9cEcBsKG0KNcyySTUenYsXo+UfrEX9OV+2L05GFXwMKiMxu9S4A
         nW/vsfPtWHXcCaMEf+DYqel81UftmK7wMkV0hS/o2fPO5fUCNffLelDcRoHfBt6ET/dt
         58sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=qmChFuROGRhUQaRZTj7XY4fka4oSnxRYcSSEiohnz+I=;
        b=iGzPmMDijia7Cy57ss57H++BQAAEBL9Vx4/re1nlORhms9gr/zBRPlYxFq4pymVryC
         JueRZutoM4CO/i0K3rxFRAAKyDxQPbvVbBtfGrC9UT7iUJbKoOK6ZIGmyrv52QqskngK
         F9/N4TXkRZSLB9XKwze1SHo0l6ipXwK/N2wlgOwiKKKv1exO3lk6slI7c/rYHQQMi2FC
         r4f6S0VoFsNOHwNKpsH1GjbePEz7+Xd+aOu2uwGvyFwKAVXsaMB4rrnljTbgzfcQGobn
         cNZrpkxeU6cxkhi2Y3caMRebC7P9M5BIzbdePCmLnjWUYugk0eGG7I5uY701jp6FGsXW
         hicg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id bq31-20020a05620a469f00b0067e4be23818si4571524qkb.93.2022.04.11.07.27.56
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 11 Apr 2022 07:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 342391 invoked by uid 1000); 11 Apr 2022 10:27:56 -0400
Date: Mon, 11 Apr 2022 10:27:56 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Lin Ma <linma@zju.edu.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net,
  stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] USB: storage: karma: fix rio_karma_init return
Message-ID: <YlQ67AgfvMXkUWEZ@rowland.harvard.edu>
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
> 
> Cc: stable@vger.kernel.org
> Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

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

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YlQ67AgfvMXkUWEZ%40rowland.harvard.edu.
