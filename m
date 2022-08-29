Return-Path: <usb-storage+bncBCUJ7YGL3QFBBFEAWKMAMGQENCNNFGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4165A4597
	for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 11:00:05 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id m16-20020a056402431000b0044662a0ba2csf5041972edc.13
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 02:00:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661763605; cv=pass;
        d=google.com; s=arc-20160816;
        b=oIgMmL4KXZyjaFMicEHzQlkdWAShzCsU/lvIpfGpAVHPMAnSmRc3XcGL/cJy8zPuWS
         ceEdZf3fgvx4mqiA5Tj0u0O7LkVykyefJetnFUL35kAlUhD/WYZJ9HlAh89356atp5G+
         AbvyeC4ZDGe/L3N0aq5r5ztLoq4HDWUMi6YXiSN0EDubkXvkmiazsJV0vmUqFDDEHinT
         FNUFEIJPPAkJcr6eJMUbA90o/qDNYhWGczqUjbmdCUTnVlXQgQFVc55IdtbPpQxFhBbz
         05kx4jJ/JqJ6E3EhvfhseekC3Sd1XhWEvjb9c+rhJcleBYfgymsA9OSbNatgTmRcM6xt
         oEVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9j5RFVEAhg+VZSty91ZTKbMPltFwkjfowdtgK5nOK3Y=;
        b=zW7HNv/pGxkOHBrjfeJLuzm1fhG8kBOnH920S5j3dYqmJlTwrD0hrQSIikw/OsQ7jH
         1/BWTZRuNfESFY4sl/C806c0UZosWa4r/ILZvznrQ5k0d1MOMRmks4G5WIxg5hjGBG09
         TgMVU5dylq9Fej4SUuE/R+ANEIdXPMQVK9WueivIFo+v7n1i0nK8t+PcnOxwEmY1t020
         Nx8q6OjzcQ+Q4Nc6CB+qAKim0iSlrLTJicRKUcQggGVVeVB2oQIlHXV50SSxUApBjiV0
         K8e3ZaTZ/YEriOjs1I5fdMvyc8BMNmRWOxNY4tBUGHSVNavXYT+9MKMr5BFWP6jJSLW3
         6zGQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vfH3d0wU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=9j5RFVEAhg+VZSty91ZTKbMPltFwkjfowdtgK5nOK3Y=;
        b=XHWWaWhhRC4nm+6tWYvs/Zubj0Ldk6yRqYg3ixtb8BBT2IrYmcX+CH4NSHKL2CzQLc
         XF4WrZUGOBvxx9AZAjV+BWXeUIP8u1r0lZcOnfrKtXxBLLHw+IYvf+kLPMa72Zjy4C5i
         VotUYcfcjBMduOcfJmr/bwPY2XQIMlu+0QWCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=9j5RFVEAhg+VZSty91ZTKbMPltFwkjfowdtgK5nOK3Y=;
        b=AWh/ERVmVW2nRncV/9PVhmYYn7HudF4kbqyZDWB6oApAF8ms8dYMiWOqtpuxqAIDaA
         BJW1jEp3wlMCqDVWHlvpyoaqo9AeKEq1YvvaAZl8bXAcd45wMMK29Rtuo0JqIu8nOMf4
         hoYhwFu0YHU1nq53kSPHm1tVMqmXuTTzcVDMV1ETqvCcukDMaAnp7+wp3i/FcWszP73s
         lthUnlBSG9jjPRL5vRoQlVO2Veo4ejd7L+xB6t99fv09RVWmguKfqApVrFIzM94gEZdN
         TpWuNGsjtGqP3RQbdKzP4d/mdMUQpzIiu0l6ysqQqh4Oc3SaqfU28grFV3NJNMTqWYso
         nLrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo15ehrUQfVP5BEPlacJXL+KqVKzixjwllzKSQQEdYczE7BYTBnb
	LVT0o6CHLGK+iO/wtu855HXvpw==
X-Google-Smtp-Source: AA6agR7rnJJVFtktpI2IFdtYifDIC+l1uOacsjOKbGfzw6NEF3RYd/0IkneqYA+9DmXhJQ42sOvFxQ==
X-Received: by 2002:a17:907:7e8a:b0:732:ff29:d1d6 with SMTP id qb10-20020a1709077e8a00b00732ff29d1d6mr12939814ejc.175.1661763604895;
        Mon, 29 Aug 2022 02:00:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4303:b0:448:5d46:86b6 with SMTP id
 m3-20020a056402430300b004485d4686b6ls2874667edc.1.-pod-prod-gmail; Mon, 29
 Aug 2022 02:00:03 -0700 (PDT)
X-Received: by 2002:a05:6402:5508:b0:43a:896e:8edd with SMTP id fi8-20020a056402550800b0043a896e8eddmr15731148edb.203.1661763603588;
        Mon, 29 Aug 2022 02:00:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661763603; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEqgeE0ZlKF+I6ZGJuloRxmsww/S+T1gyBdA68bE8TqdPAB5Hz265xKsFVujc4IOCk
         MIfyceN5XBvbdi67lnD5PZeEoSCqglKP4tIFwtBpXnExFDD+NPAhlAagLpDzLlcPwcHf
         3xiNMiBFgDlz1lcgrZgAtXIeNqyg+oYfukyOuGxCllwXS8mH6cXIDpXMY2nt4LwyVcvX
         mGaAE/d3/cJFrfcHMV97pq2ehr2kvxyxksnZo07OTfWE7rh2vozOc6YC9JwpzG3mch1q
         EEcD9m0exIDcn20iqQh2vjmmuqh0gyCgFBK/4fOcDWptdNJtI3mJ9Q211Ts9JiyUZndO
         GCAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+GQnx9ibfltTs7JSul7+9CiigZjmk7lHnaMrXJGMuho=;
        b=LLyW7T88ep4JAhlttsazb3aT+rnqKhs3RarVT2w/DW1IdoPxRU4kg5UbrIIPDy7Zyu
         wCygyv3G9gTcO6LCoyHEEaKlSoKMJITNPuHBCSQDSjEh1S4G23Zt1XNC3s7+rzfjwnkY
         TfSkRAzi7wDTKBIDtF+jnRxNXR3SHAu23YbNN7dVTVC7aLmX1mZYEoqtmEUqPU/OIr+V
         PhpppTBwigc1AbGwAMr2/c88QsbMbtkVk6ED++/mg6KrnRwLHr/t77rpugK7SUuailmV
         du8pxl+riI/pqIcbe0quvG+C18yCgPKUMHBh4GnG8x7Eajvyzl5K3W7LW3v1204A2zhG
         /Ssw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vfH3d0wU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id c3-20020aa7df03000000b00447d567a77dsi5631342edy.207.2022.08.29.02.00.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 02:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 55864B80DA9;
	Mon, 29 Aug 2022 09:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89B5AC433D6;
	Mon, 29 Aug 2022 09:00:01 +0000 (UTC)
Date: Mon, 29 Aug 2022 10:59:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu
Subject: [usb-storage] Re: [PATCH v2] usb: Improves USB2.0 write performance
Message-ID: <YwyADyS9kD2qyoKJ@kroah.com>
References: <CABd4UjYSaZv6H9Q-UbM8QQZk8HcBPrJ7=DfDQGxJNVNot68Kfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjYSaZv6H9Q-UbM8QQZk8HcBPrJ7=DfDQGxJNVNot68Kfg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=vfH3d0wU;       spf=pass
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

On Mon, Aug 29, 2022 at 04:52:36PM +0800, Hu Xiaoying wrote:
> >From ad9e714341bbc944d4b8868229f15622592f37d5 Mon Sep 17 00:00:00 2001
> From: Hu Xiaoying <huxiaoying@gmail.com>
> Date: Wed, 22 Jun 2022 16:35:59 +0800
> Subject: [PATCH] usb: Improves USB2.0 write performance
> 
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write  < 30MB/s.
> Then, igoned to load module of uas for this device.
> ===============================================
> Write speed: Improves form 27MB/s to 40MB/s+
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h
> b/drivers/usb/storage/unusual_uas.h
> index 4051c8cd0cd8..abaf4ea8138b 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -157,3 +157,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>                 "External HDD",
>                 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>                 US_FL_ALWAYS_SYNC),
> +
> +/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
> +UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
> +               "ASUS",
> +               "External HDD",
> +               USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +               US_FL_IGNORE_UAS),
> -- 
> 2.25.1

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

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwyADyS9kD2qyoKJ%40kroah.com.
