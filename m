Return-Path: <usb-storage+bncBD6LRVPZ6YGRBSVC4OMAMGQE3VR6BQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 032E45B0B40
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 19:13:48 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id bi16-20020a05620a319000b006bc2334be53sf12470281qkb.14
        for <lists+usb-storage@lfdr.de>; Wed, 07 Sep 2022 10:13:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662570827; cv=pass;
        d=google.com; s=arc-20160816;
        b=okB6dJsbZD/gWxpGitMNT9pDkgBtTg2dvDKO7wAmQORbPsghhXohnQNMTKvwZbuP6f
         LodMiBwDt5KNErTmqWcuPuTQObt2nCnCbuEhh7Fwjp1DLc8aqpd7jwmU2jPyms9txtE1
         tT+CKJnB57Qd67pcXLYO6aOrfspUVLxEuTRrbEJlbJy8vUXqe6i79fBpG7YzTpuDsmko
         XwPJ/CwR0484SAdVXKj9G8XTDYNblilD1N2zXjkmSd56M0AjD2j30oPdiP6umyN5Udwv
         lQVU4d2KMp41FlEjBQDt4IRNnl3xaQwK9XfV61x6+7x8PpwSO86Gm4ITZFxhfBDLxdO8
         z47A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NaVidWn8EHyGVnGwrZu/k4SPlyZI2S587gfHklpkjxA=;
        b=DbH3bq+8KXss4E4PCfdU3D/xasS9CWqI9B/wyx+g4H0BBRbVZnsXoT5Gz8oNfQFQ3q
         ZD+RGHfbLs7mRR++SVHs90JIWIDXQx/cVeIcVxoGhpY6Z8FKdBisWhOqb2u75HEsHnlo
         0bLrO7iPwnUc23sJ8czvhIUY5JXfNtI23/hB+KWhr51MCqHJRNvCN4yxp4oJweVDGRWg
         jJq2zk3DOIh0qCgFfEpU9QPrWRhlF/UFGNu/gXqb4wSwQdXeWDCrXsMv0FXQtRsgdj1x
         17p+FcQLI7XchmcznyRnA7iDz1+TtJpRDqFyCzDuu7NrZZll49I3p0/mcDn1nqA2b3iE
         aQkA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=NaVidWn8EHyGVnGwrZu/k4SPlyZI2S587gfHklpkjxA=;
        b=RC30lFjPKkQRhY+z+9mHlxb8mLpXfSpaC3KKvAidp0FIkdcbOISQOmGUs7lZXnEU6X
         4ejH9ShTRodoRwThobVi0FC61A7u7RxKayQ0yNrtp0La4r/tsivd86WMFKkjQwyS1LeI
         21ecH8LczzLq6jjF7rLX9yllCEKIlVPV5pLPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=NaVidWn8EHyGVnGwrZu/k4SPlyZI2S587gfHklpkjxA=;
        b=nckZH+HdjERkzHAZihHB+mpuHyg405OAaDAUGBXb+rocdhtlaAFcuqhzl5FKg/mNhD
         5HN0AbyyMPt7ahpoMkr0oipQOFJwqCsSvsmWKiKFRp7+NqY1Ur56vsYIyE8ENxDeB2W+
         LTSqJbxh8Bxk9WRioICLolwarChxKOVqXPZFL+o7wiFspko+DkuyQJMBwDzN+IlCrgE9
         X4z1ie2q7ZAZg1r672mQbXSu53CuHUPs1hpMzlsB3K+lG6WyyOrgVufeLmB+KWQ9mN54
         Cy1sgV69ynbCwYws4MYl68J6i41eeL+vjJwvDpfp760MPrD2mHqxkysKeJHuQG1WgnSV
         IMYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1wvHe0luu3SH3MimxJotq0KoED/XxF4vHgqF47ruOFZGe193jR
	DaCBXmxWkMk2BTRMv/HBSmDBmQ==
X-Google-Smtp-Source: AA6agR6rdtEMLxL9EJjSfRkZgsiSbfmTpLIgMh6c2DsGsKBwjUFLn/Km5c1vrBAvy7u8i8tyBOv4Sw==
X-Received: by 2002:ac8:7d14:0:b0:343:6db3:9e6c with SMTP id g20-20020ac87d14000000b003436db39e6cmr4213180qtb.251.1662570826788;
        Wed, 07 Sep 2022 10:13:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ae9:e70d:0:b0:6b9:57ca:5d1 with SMTP id m13-20020ae9e70d000000b006b957ca05d1ls11842994qka.0.-pod-prod-gmail;
 Wed, 07 Sep 2022 10:13:46 -0700 (PDT)
X-Received: by 2002:a05:620a:4502:b0:6b4:6c2f:e7b7 with SMTP id t2-20020a05620a450200b006b46c2fe7b7mr3413153qkp.11.1662570826142;
        Wed, 07 Sep 2022 10:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662570826; cv=none;
        d=google.com; s=arc-20160816;
        b=0aHUN61dNjiHwhTa1lT8whInTwIzyPPXNqETRKxqTGCeHwFubI85GFQrTGP+5TYNpX
         An1E+Ze7taa0xhdgFAuWLzrc+1wcQc5PeEAU46WPpbF/6tFOUcNxeVmf2bS7Lw0BUROR
         Do5AJHo3XyliF5GueMxdkvWTwgc6Tja8x1OgEPtdxFdpxW1aMeDaF+qpBvrEcBd37c9U
         DPDfrV+EM3BiRE6ozideUQcblem2zGRAAaJR8FA+DVg8l0pK57DvOi8nF6di0WPphQdS
         hxDXIRvJnRwFm66/8/A1zHoVGS6fsrf+y4teMX9uihtu7JX7+pqiRMUhfWGx59f0KVk1
         7giQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=j5bfZkX3JFbmWibcZNwWPltx37J2ombXkXuPeHhaca0=;
        b=BdTm8tuDA2LRYAhOGS9JJPl1wtKyVJdWs/PQNU5NhD2akeTg7o2zwJmtrx6VWM3cjR
         SVleiin295E41IO5cXYZ22HANdj57zsbGe42MMWtMianfvxWo1X9V12UwKZIVsBw+KNb
         1+xZpN2477oXCCJQjqF22+JRDZb+JJMyKzA5qDlC8nk1ATxs09d0Hlipb9D4hRd2iN2V
         E90dDiL59sBFkf1VxSH8BpRWbDtOtAn23o3ZVziILN3+DoxasQ/WBtSC2lky9S0JoIyD
         7MDPeniqhyfY38sk1+K9cc3uhXOI5tPsKSpkY6usYLKsyQsIgiM/Dn6x9q67dcv7owp0
         mQmA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id x6-20020a05620a448600b006bb29b76047si10830692qkp.644.2022.09.07.10.13.46
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 07 Sep 2022 10:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 427043 invoked by uid 1000); 7 Sep 2022 13:13:45 -0400
Date: Wed, 7 Sep 2022 13:13:45 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v2 3/3] uas: ignore UAS for Thinkplus chips
Message-ID: <YxjRSW5XTwqrTzJF@rowland.harvard.edu>
References: <1662519268-18488-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662519268-18488-1-git-send-email-zenghongling@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Wed, Sep 07, 2022 at 10:54:28AM +0800, Hongling Zeng wrote:
> The UAS mode of Thinkplus is reported to fail to work on
> several platforms with the following error message:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
>                endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
>                1b000000 05038000
> 
> Falling back to USB mass storage can solve this problem, so ignore UAS
> function of this chip.
> 
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>  - Change the email real name and the code worng place.
> 
> Change for v2
>  -Change spelling error.

Resubmitting the patch with a few minor changes won't help it get 
accepted.  First you have to answer the questions I asked.

In particular: The error messages you list above are very different from 
the errors in your first two patches.  Those were like:

[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00

You can see how different they are from the messages above.  This means 
that they are caused by a different kind of bug -- and that means this 
problem probably requires a different kind of fix from the other two.

You need to investigate and get a better idea of what's going wrong with 
the Thinkplus before you propose a fix.

Alan Stern

> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 8a18d58..156e89c 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> +		"Thinkplus",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
>  UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
>  		"VIA",
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxjRSW5XTwqrTzJF%40rowland.harvard.edu.
