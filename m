Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVFCS6MAMGQEIUEXKSA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB9059F416
	for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 09:20:53 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id c14-20020a05640227ce00b0043e5df12e2csf10464499ede.15
        for <lists+usb-storage@lfdr.de>; Wed, 24 Aug 2022 00:20:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661325653; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyQuFjM3N+E+VZ3jUYVFaLx3jeIb8VGuCxwAjZXQHovpLw3fTuvN+QEBreR9ttu6ub
         SR3w44YFEqPfNPifE7KxVig00QbS9yr3zItRLRRSWH2NEqSPJQKoc2CpZWU9w6hzxjh9
         /xvCrz6KfDkceKeJn7q+UYK0u2ZKAdeOUAm4wZKdhXkMP1MUfZyGwHC8jqxON1vpEhnB
         59EzkXQiD5Iha3uYdHRGNByyoZjwMxJYUP0F4k3O6z64gInEPwpVa72m8k9Xpqoc36OD
         NwZPeOtnkNeFiOfSAZ1rHITYkUtAElhFTUPJqWUa0XGPXHKPyHCZCqlC8eyUc+cbLiKK
         mk1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NcCRqu2bXXCW+90NcRuGucAz1QBl4pwr/3v2xP72Xaw=;
        b=gGHYmZUoh7DrKBrxgEuxNHai5G4tLDHGV1lk8T+54R31keK2OfC+CBVRrsPLsd66HQ
         U26DpQWIzr/cfQSe2n8O9ixOXfcQzm79k03mhQgbmDCgBu+CIDncRZsZ7JwGY4xxzuK2
         Mdo/xkDiiCoWzdMBdBsWsj0v1/U0EOhsuawuo1uH8V4MUsdnp25Opo+wLgqs8hkcPK+n
         70cuLafKn4JrN3DskrjtU93q5m6cBHF6ovd+wqsmo2V4cFcoI7RtZZ0k+8/Rl88o7u96
         BVS9vYGosBEubTyRu60r4gylJ5z7yD6qFkmRsizyoBylGyzbLC+EeDmwPT+nf0KEnaqr
         jr0g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=suQ3YWCL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=NcCRqu2bXXCW+90NcRuGucAz1QBl4pwr/3v2xP72Xaw=;
        b=CqYfoHYY16BR7GHAsrs6YIbkVpkfpJj9JWfw0sDLNS4Qp2HKr0QL9fRLHvTYc3jODm
         aN83JTqBs7fnoN0RRYH+C2VNeFB9orhu0b/h4IKVW8ROMFeutdcHAXfFoX/WT0RMLa4u
         bshQVUyLhbxQcohMPFl1X4DE4e+HURXXXvPbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=NcCRqu2bXXCW+90NcRuGucAz1QBl4pwr/3v2xP72Xaw=;
        b=0YWFN30YyIfYxVSyKMBkslBgyTBRGbbxh8hjWXremE4D17Pbrdr8eCpmlDwmOT/yv4
         wkQZ/hUdBc+eN8GF3WLrKi73wSpTMq9J47YVwRi+1kTBWhXvQLyBYW6S5Ls+zHLpfBXW
         ZtUwjkHrL7bfiKQc2YPHaxxiAKj4UJFcf8x4vAZgCDatTNpaP73iMENaV3dsnfhsudKC
         Fr1fXM1dRwq88tsseVM1mWiZiCiwqptiH1Sv8bG+mEVa7N4ylA3dxSPEciWc81dIObpS
         Ej4GXvTdcp5JOGoFuxM0on0yoPZugSw0vJVch8yWLnta3tf/Zb0EbjAljs+svDiNt29F
         IkMg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3gU4S1oZNMEvpP5ET1hNlc3sdEYpFdZgiXjFhmqr/VzCYQKxoy
	x8i/ui4RaGY6Km670jId5gUu7Q==
X-Google-Smtp-Source: AA6agR7ZM0hz3DzYnOqN55p0Nq1zmO/kHxMLqQbFx9ysxgU3FNvCP52bkBMi01yP+VYiZbemEwUjLQ==
X-Received: by 2002:a05:6402:11cd:b0:43d:7862:7c25 with SMTP id j13-20020a05640211cd00b0043d78627c25mr6677373edw.96.1661325652654;
        Wed, 24 Aug 2022 00:20:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:42c9:b0:43e:ac81:1b80 with SMTP id
 i9-20020a05640242c900b0043eac811b80ls4066002edc.1.-pod-prod-gmail; Wed, 24
 Aug 2022 00:20:51 -0700 (PDT)
X-Received: by 2002:aa7:dc10:0:b0:440:b446:c0cc with SMTP id b16-20020aa7dc10000000b00440b446c0ccmr6485570edu.34.1661325651388;
        Wed, 24 Aug 2022 00:20:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661325651; cv=none;
        d=google.com; s=arc-20160816;
        b=rT3/g/7aatZdnLKUwlOdYd6fDthkrPgshGEADn2fsavmQLvNikXINa1+lNITkHEKQj
         jyo4DBMCkih1yuLXks8Q4dI4tEkSi7MVm8nBEBV3dpkWBw3G+iIrZFGj9XH1JqAKW55x
         OYvw6FDS7c71ctzCo0WhdKykx/8HjgLAMgr2TFmbFql/cIupeLhXNYxzncPXP/P24LWn
         RpmTkwIkkErezNS2pVdO+uIO7hBUgqSnXvyPxQp79+kfbGaizDJ078Xj8iRy0jj42Lto
         XmoAIucuez/VLqhP+LqJRERfEx9AsS99p5wIYtLy/1IbZeDgTxtQnpMGI+x+9qdLIaSR
         ST+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GMwsHkqJ+fIuZKensSwVAKYkK5EMv9HikvPQCzSsthc=;
        b=xq+5WRllNc3WEL/Pp39YEoW0okByvlYISw2HUQEp10fJqZYuA0kBxnJmtyBU5FEX5Q
         FS9+AVSw4keOSRoyqAgVYkQ4WYR+xBPYc9CNowBHfKUyZaH4ZUlwu8R8Y6eZdAnucwC6
         /BnyOrLnnaHfPcbmEoXyb9+0+ME0Ohswgh1a1taz6g+kWcaUiq/PPRdaFpUHAsR5t771
         6Q4JV5IYmC1G1P8OYGMYEwoFEjm9XxaDCUWfDno2UZqQbBfHYjgneUBP2oHZFaEier/m
         2CsjtddXc2LHBmqIJBWlOnlSQN5Zmu8n2urCGUOaRIkS5N8qYvQka0S/kxdEU/MAN+6g
         UyiA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=suQ3YWCL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id jg17-20020a170907971100b00731469b12d8si1422599ejc.963.2022.08.24.00.20.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Aug 2022 00:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 04013B81A5C;
	Wed, 24 Aug 2022 07:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5099DC433C1;
	Wed, 24 Aug 2022 07:20:49 +0000 (UTC)
Date: Wed, 24 Aug 2022 09:20:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: linux-next patch
Message-ID: <YwXRTo5SCbF0MKa0@kroah.com>
References: <CABd4UjZCm-EmqmD0z2bNkem8K138SV+Gvo90h9S_ckHc4QT5yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjZCm-EmqmD0z2bNkem8K138SV+Gvo90h9S_ckHc4QT5yQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=suQ3YWCL;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Aug 24, 2022 at 03:04:03PM +0800, Hu Xiaoying wrote:
> 

> From 040e7ed7e6e9ed850575ed075e02d960a5ffe191 Mon Sep 17 00:00:00 2001
> From: Hu Xiaoying <huxiaoying@kylinos.cn>
> Date: Wed, 22 Jun 2022 16:35:59 +0800
> Subject: [PATCH -next] KYLIN: usb: Improves USB2.0 write performance for
>  External HDD device (VID:PID = 0x0b05:0x1932)
> 
> CVE: NA
> 
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> then, igoned to load module of uas for this device.
> ===============================================
> Write speed: Improves form 27MB/s to 40MB/s+
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Hu Xiaoying <huxiaoying2008@gmail.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..abaf4ea8138b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>  		"External HDD",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_ALWAYS_SYNC),
> +
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +		"ASUS",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> -- 
> 2.25.1
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch was attached, please place it inline so that it can be
  applied directly from the email message itself.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwXRTo5SCbF0MKa0%40kroah.com.
