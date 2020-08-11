Return-Path: <usb-storage+bncBD6LRVPZ6YGRBZMCZP4QKGQE4CXXT7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DBC241DBF
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 18:03:51 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id 127sf10135051iou.1
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 09:03:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597161830; cv=pass;
        d=google.com; s=arc-20160816;
        b=egEULSgkiJp7QL5VCX+FkTEwqq+D/DekfFtE+w7bMghBsLC6NApdiyNSz//4g8eHGh
         tU1iRTx+wIrLtCDBxkLYArMKB28rbT2e1BvMbNurTuxUO7dHhPy50Djqloa4jQrUofpR
         YuY+k5JUTMMMkBjhcR3J7qkZ4B5h7yWFM8Odn19ppnFc69po4pr5jG3nzBXLHiPVXjms
         Gp/LeW2yeXDrYi8lJoLWtT5EpaldwdRQji+QKChiikQ83XrZRluMaQr0uiUgu/u1KxSd
         RZC5klNOuvSKAjM3Ph73C4vKADpHy1t/mVy9aAjtwRD9f0gtOfxZ1wv1EmSrqciPQCud
         InUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MvwCb2NFdYjdL/gO6yW8EjBAkV9Q0GdXUZfK8eemxZc=;
        b=ENUk83oVtS1/aNW0BV1MK8nlHjd0ytkRbTiJuIjlA6SXcWRefzWQS35JtrMyeByW/8
         /ojKdXcQbXq0dioN1ZaJ85FREQ6FhMXLYwwXX4KJexbQTpNtCtZ4bXguepP+9yfGaKdC
         o/PmCOdEKbcs3YGkLrm8w0j+OqaI4wAN84lxzihlnBYhwX31YXotYnYUaDCXxSXyrQaZ
         k9fVNWQs2gV/PJox77NJF58UzCAUZA/hDGGLA3g7hf5x2wQqfeNT5M/A+RKCLKdPFl5i
         aEKVYnqich0UnPWhyvrcGfoN4fYiXUv7H8OFIK8tea+w/CEkwjDDrQubWi1ze9ynUz7A
         /cuA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MvwCb2NFdYjdL/gO6yW8EjBAkV9Q0GdXUZfK8eemxZc=;
        b=HbWN9FfvX6hxyesDVA6LfhoOrD8wO/QcXwMi5PecYBvhKAoXf+4vteVPoScIBWHgug
         Y4cvcZ1a6Ge1EtQLUCSFkjsMx5KQgELpl+1FQUyEy57IIH5UAvzEjc6INOm75qagqZGX
         CcseC+6XSOLGLm07UUa82RjMH4OTZTFWLK/+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MvwCb2NFdYjdL/gO6yW8EjBAkV9Q0GdXUZfK8eemxZc=;
        b=B/dL2KIzPV9b7/xSVLKMARGU4Kk9lTPEUOc+zg9GwxTCg4xNXBkVl4AUwiqD/25YOq
         dlxHdM0ulbX4jbsk+pMttOHcWK8/J6uqRIvvibyd+StvEJxk94ZlG3eUwT7Y8qnfY34F
         +ieljAD7a69htypSeZAcBTzUoEirAkKlYhVmRtslymjYR7qc9IeA2pVTHW/vxELTYAXZ
         IHL8r1JALjIrDiotbM1XBu2e0gTcvZKzgz+zsESAUY/JVAjQjMtUmeHmIiZx/LhjpdE2
         8C5fpHNO2lOO6EYoB8LNVoe8Rl22C9q/W70gwB6YQu6iHlmVD/QZg1QPIXLSpPybdunC
         m7BA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533nlN+BQqpyMVzhl7nxWQaXzg5NPH8T38T9sspbRfVF/H6ZOtuX
	SYDMt4yLuTvsUmwbz3ljR6CXwg==
X-Google-Smtp-Source: ABdhPJw8k5maajJp5Sk/8/9tOHNEtrHlSk+ftGpYX8wlef/2qErIymRJBK6FaP33X7tT2LIzUD8LDg==
X-Received: by 2002:a92:cd42:: with SMTP id v2mr24134217ilq.241.1597161830010;
        Tue, 11 Aug 2020 09:03:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:84d6:: with SMTP id z22ls3551185ior.4.gmail; Tue, 11 Aug
 2020 09:03:49 -0700 (PDT)
X-Received: by 2002:a5e:991a:: with SMTP id t26mr22924639ioj.7.1597161829415;
        Tue, 11 Aug 2020 09:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597161829; cv=none;
        d=google.com; s=arc-20160816;
        b=x6O2nbDqrDbn5RmcgJIu/heBrUhNqRJCaYkjfQCVvXYgYd1hYQrx4Q5RoVJg6jDxgb
         /w0fOtLdBTy6HnIYgSpqC50Jwy1OqKP+i2WZFqIQ/8/r1GeOCiW/pvBbMEBe23uite7u
         t0lVZb6nfkEmDtdXT6/OxbG9b51InZw28D+Y1+q+m0cbcD7x/4/BhfbxqZ6qLf1MYqKS
         PMmJH62QSU1bYy2Wy0UjRWZ3Oj2qlAiuLZJOgbbu4rYf1kyQV+ZxgXuXOac9b9z48AHm
         HIenLGnbO1EvIAqGXB0K35BaNIKgscJ73a3HvNowPqqE6DJs3p6KT87Pm4rbnIEPv9q4
         0lIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PfIkKH3L+Q54Wg68D/Okm/rjZx0xwp2l1gW6SI8x7Xk=;
        b=GWZKLqRDKbjRofI5rviFvxiZ71IHSGsOM5RKUrvyTAAJv/gzsIGEhViZZTcxPKMIFu
         x0sSnMv9yw5z8C46xoHxV5Y7HjIZfSdOKHioVfWAr+96hYXvK0bSNKhbCCX/O3eTn79T
         79VMwCg/wmXmk4i3t5GirAfrrHWzAffn33eh1AenJkPdLitkPh6OIN+883Il7NDMoumv
         +25H2JiOmDJqIBT9fiZJdr3PzHIn3MEQUZz3WMaasit60bJWWrGmzleG1YOCKafp2OC0
         Rt9GfJzS/CqfObRdDno1mMxRqV12Cnqax0zJE5xZpGk6nnGnJU8j6NJDFdTlUgDDccAV
         EeDw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o26si19246250jaj.29.2020.08.11.09.03.49
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 11 Aug 2020 09:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 337967 invoked by uid 1000); 11 Aug 2020 12:03:48 -0400
Date: Tue, 11 Aug 2020 12:03:48 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: trix@redhat.com
Cc: gregkh@linuxfoundation.org, acozzette@cs.hmc.edu,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: realtek_cr: fix return check for dma functions
Message-ID: <20200811160348.GD335280@rowland.harvard.edu>
References: <20200811151505.12222-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200811151505.12222-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
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

On Tue, Aug 11, 2020 at 08:15:05AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this representative problem
> 
> realtek_cr.c:639:3: warning: The left expression of the compound
>   assignment is an uninitialized value. The computed value will
>   also be garbage
>     SET_BIT(value, 2);
>     ^~~~~~~~~~~~~~~~~
> 
> value is set by a successful call to rts51x_read_mem()
> 
> 	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
> 	if (retval < 0)
> 		return -EIO;
> 
> A successful call to rts51x_read_mem returns 0, failure can
> return positive and negative values.  This check is wrong
> for a number of functions.  Fix the retval check.
> 
> Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/usb/storage/realtek_cr.c | 36 ++++++++++++++++----------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 3789698d9d3c..b983753e2368 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -481,16 +481,16 @@ static int enable_oscillator(struct us_data *us)
>  	u8 value;
>  
>  	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
> -	if (retval < 0)
> +	if (retval != STATUS_SUCCESS)
>  		return -EIO;

Instead of changing all these call sites, wouldn't it be a lot easier 
just to change rts51x_read_mem() to make it always return a negative 
value (such as -EIO) when there's an error?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200811160348.GD335280%40rowland.harvard.edu.
