Return-Path: <usb-storage+bncBD6LRVPZ6YGRBCHOXOJAMGQE76YCGSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F804F81DE
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 16:36:57 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id h11-20020ac87d4b000000b002e1c9a3ae51sf5710374qtb.0
        for <lists+usb-storage@lfdr.de>; Thu, 07 Apr 2022 07:36:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649342216; cv=pass;
        d=google.com; s=arc-20160816;
        b=wBqphDEALlD+8k8e4BqkTk9/unRTzuD8iFRkH2NALDKyvqUywBBneN/rQ0YxSOHSx6
         lvq7ptif8xUGqjRdKP5k5yLgDdsfUk+SA2n50+geiPwZpnUJ8YiCDlJAGbdaSBWZOjoD
         FIon9dBqZNO/02sf4bT/js7N4i2utoPVvnDfWV2+sD9Ru0xX9KsrW61o53A20wkbgGtw
         VBCQEKb2jspGZmxNiGSBFAxBvKAr28vHd30WNM7CQg1ieFFoceJaY6+kvS9F25pdjZHX
         diHV4RKJpGRmxJ/r/jZiKqJ9zUqaiqyEDZslnWhmpcSqLC+yAmGPEZ6ciPSIijGwcCxQ
         8C/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=r6ZzRBesv7MiJeQrinX/uD/BdzU2QWms6lWAvgvVxbk=;
        b=xgf+xO+xRFOOfXaxwpPnlDaUEYDgeNwB4H1axafWMHevzNaT1wNjZEEKb/kztjm8QU
         P6GegnnS6o1U8RJBvTysnacqdWDd6MwFHzbWK6BN4PWshMy9tbXPUXZ9GITGznquYHc6
         JHJxzPvdIfdOG2K1QxInUcW4U4wBeTaquJismWhyO97lqHzR5NoJd6gfWsTnY9AklsRn
         b2cHbeGetI3aaMUZFI0IUJRoRomNqeYXyLXqvVKMQU2Q5mO1omCdzhDiFDvw3Fy+XVqz
         iNYD3Veh6FNu59cY/QyX+XfCw6GZFozsSiBMeNrMhgg3y7Q7IFY9SDx9M3unNVu2Vz6Y
         4zfg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r6ZzRBesv7MiJeQrinX/uD/BdzU2QWms6lWAvgvVxbk=;
        b=ShY8UFLD6Y8RK1w8P7rDgCpc+RRK55y06LOwb3izr3w14KaKqrfrrm7bc5d54/5ksj
         Um43NhejY/WABlCVJkneZY8mdbCyNj16iwBZCnwGdc/WDvKlpOObsnHqVdhB32bkaX3K
         vK6+naacpJTTyUYCLZakrVzDNdxYvQqBxjS9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r6ZzRBesv7MiJeQrinX/uD/BdzU2QWms6lWAvgvVxbk=;
        b=7xX8IhhpkT9Ja7t19lZqMR9haOALYNOAFqw76GHPHasSgthweSpSLcqOUPOmaLqwmd
         vCEdwF57xKTay3NbvmxNlEOLNFqN8zBC+mtkJ4U2CdSdyJXGk68zeXi7kHM1roXwFY7J
         UREBi1vttuEP4BGkVFb54xMVWlIzQfRRC6b2G9pOUcYzZlvujZY0IXORJ8L900aGNUTT
         Kz9e1WhID2JFzqQI3VcQr67y+j2529qbJEwTgcyS5R+vv15i7jq4WCMwV+xOZ6zofb9Y
         xbWwIOkR5VG29axfT9kFu4Oe11Nf40N1RZMPAVNcg+l0THbtWIF0hMS0KE/7wdDHgrhG
         9L+A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531p2hAzuEluR8ij7UzS3h5q+ENf0Fxg2ufaIjl4iD5xSuQQHQZw
	/YYK2mQvKgEmQ0jbcUAgn3r9Aw==
X-Google-Smtp-Source: ABdhPJxVS1z6swMhik+mX1p50gt7Hz8pXcqD/3iDPw8zF/9UxTzSTV3E4VGKmALGyoxY29PovG618Q==
X-Received: by 2002:a05:6214:1850:b0:443:f201:abcf with SMTP id d16-20020a056214185000b00443f201abcfmr9148726qvy.119.1649342216506;
        Thu, 07 Apr 2022 07:36:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:20e6:b0:441:6b43:6e5a with SMTP id
 6-20020a05621420e600b004416b436e5als1561563qvk.8.gmail; Thu, 07 Apr 2022
 07:36:55 -0700 (PDT)
X-Received: by 2002:ad4:5bc5:0:b0:443:8d6f:f9fb with SMTP id t5-20020ad45bc5000000b004438d6ff9fbmr12009476qvt.60.1649342215830;
        Thu, 07 Apr 2022 07:36:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649342215; cv=none;
        d=google.com; s=arc-20160816;
        b=EwsexZ0xn7mTa7CsWCClA6/jPPTr8RILnqAjOBEOoWkYwqRxDe3+tstMZQZWRmgH9C
         ODpquMjF+bbNy6kywiBin3KlOgFPo+aQ8NyBzKP0DduKliRxszHRnPjVZZRG3hWsOZhV
         emmYqYOEtTElFEasmt0zg9/jnkCeec5vX9hGa/l/h1mdnWg72QKy9UPKbonMO7gagl7C
         bu+3uXGKUgFZUXKnTa5ch9PchvVxXCnpTmQlzCNJCfUxsi2OGUfAaPUQD3zp9hbzUnVx
         eAZJzxcgzMeQH74o423TYLdxBcFepwTDa1FZZMtXTzGuQag0VOpg49GKcpU6X8itrVck
         IHPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=q+CJoHHIdiV+j+Vef6vLd4dMscsgW5NvABxL2js3pk8=;
        b=MmmSVQIHzT4zaJvfhed/Yonumh+H3E2IY0dbNqa3qL09W35dU4COJbRXcceMPy7oyz
         NyKQ/qWLOMkv3V8d5zga3NhK6lyH3ROuArL/277HrMRi1Di9xSL/1ipyFGvzX+RpuwoN
         ymutmRj5R1dayknC4EOkfEvBHvnmDZReOyn4wNxMa5MEztYqP8AD4nFG7NKWVPh/DZma
         +lwU16dFGVOBjJS5eyv+Gr/aeT9Gp0onJqWHm/dghG9KdMUAWitZ8sqzR7AB7pMI+0xr
         Ru82AOgEg1sCNLSmnw7g8YNx4u3nCuSqdo4Y2IvkojlQHpVMML4mldwXY8zx2IcnTvMz
         WF5Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+624400c6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id l6-20020a05622a174600b002ebdb60d349si570755qtk.431.2022.04.07.07.36.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 07 Apr 2022 07:36:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+624400c6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 223946 invoked by uid 1000); 7 Apr 2022 10:36:55 -0400
Date: Thu, 7 Apr 2022 10:36:55 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Lin Ma <linma@zju.edu.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v0] USB: storage: karma: fix rio_karma_init return
Message-ID: <Yk73B5jKKMoYFCoj@rowland.harvard.edu>
References: <20220406100259.6483-1-linma@zju.edu.cn>
 <Yk2tR4iEr5/T6o+h@rowland.harvard.edu>
 <18ed9d8e.3c7eb.1800193253f.Coremail.linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <18ed9d8e.3c7eb.1800193253f.Coremail.linma@zju.edu.cn>
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

On Thu, Apr 07, 2022 at 09:11:02AM +0800, Lin Ma wrote:
> Hi Alan,
> 
> > Not exactly.  rio_karma_init() is a usb-storage initFunction (see 
> > the usb_stor_acquire_resources() routine in usb.c), and these functions 
> > are supposed to return either 0 or a negative error code.
> > 
> > So you should make the routine return -ENOMEM, not 
> > USB_STOR_TRANSPORT_ERROR.  You can simplify the patch by changing the 
> > line where ret is defined; initialize it to -ENOMEM rather than to 0
> 
> Thanks for pointing out that, and as I dig deeper, I found that the use of error code
> is "totally a mess" in the usb storage.
> 
> Taking the initfunction for example, there are below 6 cases
> 1 karam: rio_karma_init()
> 2 realtek_cr: init_realtek_cr()
> 3 aluda: init_alauda()
> 4 isd200: isd200_init_info()
> 5 shuttle_usbat: init_usbat()
> 6 onetouch: onetouch_connect_input()
> 
> The (1) is erroneously return 0 even when the kzalloc if failed, must be fixed.
> The (2) and (6) uses -ENOMEM when allocation fails. (2) will also return -EIO when
> another kzalloc fails or rts51x_check_status() fails.
> The (3) uses USB_STOR_TRANSPORT_ERROR when allocation fails (seems that I learned a
> mistake from here).
> The (4) uses custom ISD200_ERROR when allocation fails.
> The (5) uses constant 1 when allocation fails.
> 
> It's worth pointed out that (except (1)), the others though not following the standard,
> it won't cause bad thing because the callsite of these initFunction just check whether the
> return is zero.

That isn't true.  Look again at the code:

> /*
>  * Just before we start our control thread, initialize
>  * the device if it needs initialization
>  */
>  if (us->unusual_dev->initFunction) {
>      p = us->unusual_dev->initFunction(us);
>      if (p)
>          return p;

If p isn't zero then this function uses p as its return value.  Thus it 
does more with p than just check whether it is zero.

>  }
> 
> I will then send patches to make sure all initFunction follow the standard.
> 
> > 
> > And don't forget the error code for when the rio_karma_send_command() 
> > call fails.  In that case the return value should be -EIO.
> > 
> 
> Okay, will add this in next version of this patch.
> 
> > 
> > Shouldn't this also be marked for the stable kernels?
> > 
> 
> Sorry, I didn't get it, do you mean add another tag like "Cc: stable@vger.kernel.org"?
> Or I just need to CC the mail to stable mail list?

I mean add another tag.  See the description of Option 1 in 
Documentation/process/stable-kernel-rules.rst.

Alan Stern

> 
> Regards
> Lin

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yk73B5jKKMoYFCoj%40rowland.harvard.edu.
