Return-Path: <usb-storage+bncBD6LRVPZ6YGRBIMEZCOAMGQEP4ZUJMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD6E6472D5
	for <lists+usb-storage@lfdr.de>; Thu,  8 Dec 2022 16:26:26 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id nh17-20020a056214391100b004bb6c16bd4dsf1637856qvb.17
        for <lists+usb-storage@lfdr.de>; Thu, 08 Dec 2022 07:26:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670513186; cv=pass;
        d=google.com; s=arc-20160816;
        b=A09bdvMdBW8jetDop0H41Hk0u6R2wRn9YA8r+J2GVUE21UTcS/sddhYY4Y6cbwCrGA
         fu4Kc5Q89J4FAHT2UAo0oLajkrrWmHlmQXKM8WytiIwCTa5meZBETkr1B84ImdW98khU
         l+4321cfyniqcCXGr7OqEkxGfMXd09bs5h+Wcy0l/uSAyn6jCPl38urIye55GvZxF7JK
         XJSC/YE/a0OSJvTsx8H3xtI99SKvGt94ypQcqd6VSj4nG2JeyE/hdC60ZoB0isC6i3zK
         vfEE2ZuOu+EnylAqmXMhqcJhK3KSuqU2npFM8gTOdTRhanVymmFSfYDsYZ1M9dC92nWY
         OZUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zn5ZtI2afUrm9DAQYYQyknVhv0SQITz8CgpSWDX/Dr4=;
        b=jbVmGgsOSU9oamVPDnkMqx9eaiIYTUmgUBpsmDTvgwTLubVB2eaXHYYvUlaY+1YxmM
         ttMIwB3hVoWTOZPpDLKtiuwenVd+Ev+rjafIVhEcg4dwkTFbps63QFq42kZqvnPsmOvL
         4NgNNoEt+G6RQ2h2aNV2JmsmKJ5fDxrC1x+scpwgAsZ2olvDeO87/amzSsubAkhFM9n/
         7cpl2Nr+DxQKCthRg8Mf+aarBKghWJAK7JcrBREbTstNg2T87IzlYNGduy8kmsVM56nm
         YoVR/9J36IihlWjVOdKgfX0Obk9Y9/Iylvyw4qyhnn80vJb3YHejoyGKCTq99LIoiXZT
         yCkA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+638bab0c@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+638bab0c@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zn5ZtI2afUrm9DAQYYQyknVhv0SQITz8CgpSWDX/Dr4=;
        b=SBqBJBAGInQnu7e0VuFE/N+ZxIvEn1JEPl7iEBSIkhR2T3GmMemllt4CuRJGaJLMAK
         kR3armCP1S3HO4b1rDHnLh1nhJ3RvB0m6oIv15aJxr40zW4swW2eRS7+0+XlZpiIuWLC
         uZnyong6/YEWJWUNKhUpJrvczmCj6k8uVz3jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zn5ZtI2afUrm9DAQYYQyknVhv0SQITz8CgpSWDX/Dr4=;
        b=Ij5aWiKl6b44PGQpsdzctCJQqXaPNxHputh8NNrx7IwOLDHoND7AKQfD8Wiv6ffLAx
         qU5ie+eICtUZfgrHNKqjGtd/gcSM06VqE6diGpU9Buub7PA9bHcaZ2DrqvcJG6KDdxwD
         Tv3xSAvlIVeuJd5UY8DaKG8bzyHWHZOFXcehIoQNS8WnReR4L5vxkCcj/hU8Xlykhjux
         FVGglVlalRpMaCqDGW/8/7WYs2kmHESoXTmtKTvJ9gj1czGKaayu55vidhngwZjm03ep
         Q2527JfjT/FxvPyJY8yMwrSUMye+GIksWPLB9FQzJjQk8HE3glfClRCgHLUxXhetUlEb
         APFA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANoB5pkgaGK3C3vMnLDXY1rA/0xeMi6+sBuQZv5m4ynxTJnFpl62N4/3
	SL7+Giq6I2/erFEHxsaOkvEw1w==
X-Google-Smtp-Source: AA0mqf5NBzr30I94cwsR+5Bxu8jaqtYy3fJ3GeGkFiDY11AGs0xDlfcenR48fNfepS7/AsGpLRdJzQ==
X-Received: by 2002:a0c:ab4d:0:b0:4c6:f6e4:93e2 with SMTP id i13-20020a0cab4d000000b004c6f6e493e2mr34441166qvb.105.1670513185843;
        Thu, 08 Dec 2022 07:26:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:43cc:0:b0:3a5:4442:58e3 with SMTP id w12-20020ac843cc000000b003a5444258e3ls3457405qtn.7.-pod-prod-gmail;
 Thu, 08 Dec 2022 07:26:25 -0800 (PST)
X-Received: by 2002:ac8:689a:0:b0:3a7:ec54:cfa2 with SMTP id m26-20020ac8689a000000b003a7ec54cfa2mr3888689qtq.56.1670513185006;
        Thu, 08 Dec 2022 07:26:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670513184; cv=none;
        d=google.com; s=arc-20160816;
        b=sq/E+C+XZC7gAulms5fJc+7B/d10IykdJmaX/RtivcQ7LajNGAkMxY8SdyRdK8Bad2
         em4Cd4/6g44CWwL1ut72fN7XaRtEK9Xnp0B/p58fqoBXxFM+yh58C75rHNixXVfwL60V
         af0/b9hEjNNDbcCwhVu5toAd/3Be7KGxbWX7oXG0Gp+3cojS5TJeJ9ISJdyDJLZAg93x
         VvOnFQN1GQjs/GWZMa4Jn43e1SeRTokSxs8DXswK4hS6Y4fLy00kt93zbynUPuYOW6wc
         9EsDIOnYmI3I2qt34uVbCdeUwds5r9MSI2eLGl2YtBdp47MAdhLRfPAGwSSQcKvENlox
         sYcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=RL7MKxtVQZIGm5EuQST7k2E75T1AuI60CtQU0UMq3xY=;
        b=Yj11Xnub1jmkZ1rWnI6yVHOw9EKdhJ7Fvr/7S+bkJL1+H216Dax4zOddY+fjFOLxB3
         sDZknGMMO+bsXoAVMhLONicj3pceSn8jcir0BsYtjUNIW7Nb2kpPKX7bk5ronhiPIM/z
         GvWm2Zf3ceg/sIb4EpapnMFPZ+oCWeR4EzziIAHq74MdWc/qypnUAwWRUIMaRewUObrC
         Ti/MUhjDtIi1ZzB7EvzdpgmgyHlA7DtSFOhro3pSj/4hscHgFJrpNZBjEL/uHJavA8PH
         r+f6WIl6lwwd2WZT+pOLVOJ9msK5w9GCBIQXYdsaHkS1m5i3CRG6QL+2IFbIBYEq8+cH
         oITg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+638bab0c@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+638bab0c@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id x8-20020ac84d48000000b0035d0b7c8d3esi11215041qtv.159.2022.12.08.07.26.24
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 08 Dec 2022 07:26:24 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+638bab0c@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 729470 invoked by uid 1000); 8 Dec 2022 10:26:24 -0500
Date: Thu, 8 Dec 2022 10:26:24 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: Add check for kcalloc
Message-ID: <Y5ICIG0z93TwcjQ9@rowland.harvard.edu>
References: <20221208110058.12983-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20221208110058.12983-1-jiasheng@iscas.ac.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+638bab0c@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+638bab0c@netrider.rowland.org
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

On Thu, Dec 08, 2022 at 07:00:58PM +0800, Jiasheng Jiang wrote:
> As kcalloc may return NULL pointer, the return value should
> be checked and return error if fails as same as the ones in
> alauda_read_map.
> 
> Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/alauda.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 747be69e5e69..5e912dd29b4c 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -438,6 +438,8 @@ static int alauda_init_media(struct us_data *us)
>  		+ MEDIA_INFO(us).blockshift + MEDIA_INFO(us).pageshift);
>  	MEDIA_INFO(us).pba_to_lba = kcalloc(num_zones, sizeof(u16*), GFP_NOIO);
>  	MEDIA_INFO(us).lba_to_pba = kcalloc(num_zones, sizeof(u16*), GFP_NOIO);
> +	if (MEDIA_INFO(us).pba_to_lba == NULL || MEDIA_INFO(us).lba_to_pba == NULL)
> +		return USB_STOR_TRANSPORT_ERROR;
>  
>  	if (alauda_reset_media(us) != USB_STOR_XFER_GOOD)
>  		return USB_STOR_TRANSPORT_ERROR;
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y5ICIG0z93TwcjQ9%40rowland.harvard.edu.
