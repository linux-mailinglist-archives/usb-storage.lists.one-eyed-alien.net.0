Return-Path: <usb-storage+bncBD64ZMV5YYBRBLVU6LCAMGQEGR6YFYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C51B24B53
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 15:59:12 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id af79cd13be357-7e7ffcbce80sf1407551585a.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 06:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755093551; cv=pass;
        d=google.com; s=arc-20240605;
        b=fcQvE4vxth/HPsb8ylpm7L+HqxKkQm7jvtTqLOWAOJ2JitdcnaPg3Yp7+ZsyJZQXDc
         fROYxWyHBHhBtvhEL+qAqBftSTWE9m1QC8/0Qi0vUGH3Bp6XFtMiyYjOI70kGifXTN+L
         RwZKNsfccJyMyuMjXWJAOG0luW/aoGWPrxkjJAI4vIwfrmVsDWQo5Rp9CPPTMgoG2jJK
         xUuee8a11hKEXj+9Sel+aU5gvB6wCoaDxPMFcE4lso0vU/gFrs0K9kEkCa2+pC9OIj0Z
         shZFQL+L+8g0fj2IwdDwubqw9eTqt1M7bcdMvqlz81sPq8YPFbjp2GoqclwkoRIURxVz
         oMpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=417N4bmx0nrxhueMl3XAuipF+0FK2oLnl3YIJH3pR4M=;
        fh=6b4YTwX0zNbNRKUAeYV47UVGhRcX8uqHMAUG9IFaS/Y=;
        b=acVj97gW3XyIq+inWb6kNG+VN6Tv2xicplZXql8NpN2xzxgFCW2oxCtA7D8SiABKpz
         RNVX2gmcVU9S9gz5RvhWvaZ+XxwkSens7nWZrczGrFWecMIG7iX96+ewnwnYAgkKIN8v
         8eqno3PNicdA3ijl1eMDfbY0p2JDmeuqiWpxJxNVJVUvELTGUoGQ1ds75kUwY6624UGx
         NokNQeOKi9d2vofQZYPbci3uK0+Lg8AfqnrpG3qCnqgJAKlAk/s4Dzztg3elZTGKazpm
         LUucdGIEZ2EDgB5PWoH4UozUQFaWDO9DtpnEdQO8bA+X1w7B/QH2hMmBgD1PMMRFBMIF
         sGZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WkJ5hEXp;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755093551; x=1755698351; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=417N4bmx0nrxhueMl3XAuipF+0FK2oLnl3YIJH3pR4M=;
        b=H6W/022xoAnEi/6vtmM+9QREzn2krHQ5SqZoZ9all7/U6mhO24trV2gyUsxtRomtAU
         cw6uyblcYYrdow0Mv4ovJpJjVwdYtvweXW22iu8xwxNLlQGp55mQ8q0MhIdysmRz/B2j
         M29BPVNTCrgaElwNWXD/8mn+IRlIqfYUhJcGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755093551; x=1755698351;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=417N4bmx0nrxhueMl3XAuipF+0FK2oLnl3YIJH3pR4M=;
        b=KxOkXHR7R9zDRKu/hnH2VonIY1dtwJ6QpwqqNPCJgV4Whu08UXewTIJumkfVc8HF8P
         y7KR2XSAB6Eh5GgBqSIe78potSy7hw+I9AC06YXhnmHf5qTNRi2qF/gKVqOzZzWoU0fA
         gKbr8mlpsMmjF3nIiU2KFIAb6RkP+jR4t/WhVAKheo0+ngWllQ3Ye4Al+tV+Wgdc2b8f
         CMM9zwCm1T5ExqRkb9dgh0U07MmzVLTo0NBHdAWTgsazzoqbTKa4nSO/jYsbjZW5ZLjr
         q4hbifQj1h+NMs2VFVAnmHpWaVFRB7yY6gXYsvDPGBdHCIpEGIaNgEV8E8jBTvM/7HWs
         Jk0w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUJeqWZJs/d8KXHvxHu3pnhU+Nt93Y7IK9lP7GhK8BpE54PlOvlW92+z6lzj2MowL3CnpFZ4Q==@lfdr.de
X-Gm-Message-State: AOJu0YwKzNtoUtzdA+uvcI4yQe6hkKzwmYuYlNhe5yPt9MzBGQKjfuoL
	jDoNiMyO/gMalMepuFd1p1GxEDDENLiPQQ86kZXICaQuQaakugLJR1/nrXEuElZAYM8=
X-Google-Smtp-Source: AGHT+IEqTycU/0J2JBLv8px5ymFKDRpmvxQL8XNGdgHEvo+d+MxT9AAoy6gIoYUB/rXN/zA6ftl0WQ==
X-Received: by 2002:a05:620a:6014:b0:7e8:2f4d:461 with SMTP id af79cd13be357-7e86529d7e6mr357071985a.2.1755093550953;
        Wed, 13 Aug 2025 06:59:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcBpOcr82mPe7sI1IVh82fwaPMWgsA62ewEgrCPh2T4qA==
Received: by 2002:ac8:5803:0:b0:4ab:8dcf:6968 with SMTP id d75a77b69052e-4b0a04cdea5ls122063761cf.1.-pod-prod-09-us;
 Wed, 13 Aug 2025 06:59:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV10KsX7Fvodczvj8koMIo0u7BwqEaz9wOLZzkX6AB9iuAPZYfzMrowRsSrbkyUy1rV6zOMwoEM6f75yg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:312:b0:4af:1d64:b073 with SMTP id d75a77b69052e-4b0fc685aebmr44944181cf.10.1755093549726;
        Wed, 13 Aug 2025 06:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755093549; cv=none;
        d=google.com; s=arc-20240605;
        b=NXtot1PrrJR/mitoxPELTv1L2E/7/8Zg2qtpZYb3OUslC6PGdmnaBRReqOSbzBwYI7
         ZHjN1UTqHcmATUcQFcbZxjb2dzisMATFxJXtFcUzKmxdiT8N8qv5nAOQH7cLxqng3rOn
         vSh6fRkYIWkarLuXdSjZHsoZitU36Dv/oZjp13VSN228H+KbW23YrsH2jF2LFnptpRFG
         7+w5MDPNUrZQvmGojHsl8eRZmOiOTa5aAnD/zP9He5gXKWXdqZE9847V105K5Qj8GL/l
         529ePnwe3XrsciUlokXSkMDKEr0gphPygwp68EXIWvkDMQorYrupxXnKSB9WUyyraiQX
         Xgmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0B5+KCwTYeMl+r7+gOvY6gHETkIvCqXubWBUjPQk9aQ=;
        fh=L9Ntfuj78rb0pP+ga5c/p5QbQdnjwpyBUGhRv0ylk4E=;
        b=hSO+n/7k4jCLNyJBA5L2vd/z9MXbqvuTJwZDdPFkXvuaMGWV/+iT8IPOPWNWO2Vj4U
         O/6NIKMrunm3feTNwWBjsQE3mZKCt3sQLNA8lCewwBRp0HRyo6tnDN+gQDIE0l96FrJJ
         pO1IZYF/i4kt/ex6bu55I09mQ4jAmKap8sCXNd6Bl4aHLSF41ra/wjkL2eEzIOdHG3sE
         s9e0hDA8EQ1Zr2c06XQlvRscxXbM0dSPu6eEHH1HozRgoHZHoosmrmlOVfcZbDnadau2
         aaEPi1oZQSCJZSt1abj/V40h5hbVN9+3eQMECD6Cu1eetAPAzu6MrVntVEePLt6WDMbq
         08dw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WkJ5hEXp;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4b091f557adsor136188551cf.0.2025.08.13.06.59.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 06:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUxn2aYYMdh82UJfCm1rF63AtjETus2u7L9FnBmSMcLqGThhu0hw0FD/6ddn2rgXgE5bO+lKtYM2NxSuA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvNnfrtoF4KvzHFM2O6HcGwHQcBzSYhsoV3Vh7KpDspGIOL4ZjbBtXiAYffc3/
	P0V0bWB0/sQRqvxCMnH5mzOHKKtw6cWuvPeoIoi6Nih+KmhPZ1G2ar4G4S7+Y5DHKCXT7VTzgCt
	UCVRxDd2+dNsED3EoxlwsaBM6K9zaT8SDbwI85EjucB4FAPovfhOjUbL3Rv/LQOsqJGx0VazSlG
	uzvQ5yXtqI4dKbh0s2EAhY08PIDTnFwTI4aKYESMgWadZlLc/qHSLEnn+zGengw0PymkhLG3GCk
	2mNe/UBk4Ne5F14jLKBrTf8PCgaw05VQhykUXnS1kwqt1RTbqMgKbcH3aMIjAUJJ7DIU4U8FaP3
	lCzu6Pj36YOW7V2Q2bWskRUi0V+VoWJ71O1LU5yIz
X-Received: by 2002:a05:622a:4107:b0:4b0:6703:db95 with SMTP id d75a77b69052e-4b0fc687c82mr34072551cf.9.1755093548792;
        Wed, 13 Aug 2025 06:59:08 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0a41a2ab2sm95720401cf.18.2025.08.13.06.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 06:59:08 -0700 (PDT)
Date: Wed, 13 Aug 2025 09:59:05 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: Re: [usb-storage] [PATCH 1/3] usb: storage: realtek_cr: Improve
 function parameter data types
Message-ID: <a6deb8d0-dc8e-4d4a-94d2-ed2617091eef@rowland.harvard.edu>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250813101249.158270-2-thorsten.blum@linux.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=WkJ5hEXp;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Wed, Aug 13, 2025 at 12:12:47PM +0200, Thorsten Blum wrote:
> In rts51x_bulk_transport() and rts51x_read_status(), change the function
> parameters 'buf_len' and 'len' from 'int' to 'unsigned int' because
> their values cannot be negative.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 7dea28c2b8ee..d2c3e3a39693 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -199,7 +199,8 @@ static const struct us_unusual_dev realtek_cr_unusual_dev_list[] = {
>  #undef UNUSUAL_DEV
>  
>  static int rts51x_bulk_transport(struct us_data *us, u8 lun,
> -				 u8 *cmd, int cmd_len, u8 *buf, int buf_len,
> +				 u8 *cmd, int cmd_len, u8 *buf,
> +				 unsigned int buf_len,
>  				 enum dma_data_direction dir, int *act_len)
>  {
>  	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *)us->iobuf;
> @@ -417,7 +418,7 @@ static int rts51x_write_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
>  }
>  
>  static int rts51x_read_status(struct us_data *us,
> -			      u8 lun, u8 *status, int len, int *actlen)
> +			      u8 lun, u8 *status, unsigned int len, int *actlen)
>  {
>  	int retval;
>  	u8 cmnd[12] = { 0 };

I just looked through the original source file.  What about 
rts51x_bulk_transport_special()?  Shouldn't its buf_len parameter also 
be unsigned?

For that matter, what about cmd_len in both routines?

And have you checked the corresponding values in all the other 
usb-storage subdrivers?

As you can see, worrying about the difference between signed and 
unsigned values, when it doesn't really matter, quickly leads to a 
morass.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a6deb8d0-dc8e-4d4a-94d2-ed2617091eef%40rowland.harvard.edu.
