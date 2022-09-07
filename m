Return-Path: <usb-storage+bncBD6LRVPZ6YGRBH5D4OMAMGQETURBVGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6835B0B44
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 19:15:12 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id i10-20020ad45c6a000000b004a25d0fea96sf7228938qvh.3
        for <lists+usb-storage@lfdr.de>; Wed, 07 Sep 2022 10:15:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662570911; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOfwfDaXB/CsiTsaWbI92ao0e2vZmbe6EOn3YgqF07I8OyE3Xu8WSBam3kO8GcXoiC
         gjVom1PCMvAeQG27AB5pExIblzOIFcm3sTmnaJ4Q0y1xDeQrrRTwBKZrGfFrYwsjnlBl
         CYpsPsoA6J60sIZ0hXb7YGu+QuZayMJ7wrMYRKJVXOOmAuTAj0L7iTIlV8Q2w5DTig5C
         f3WA0R0Hmy/esbnaWAZFIk59+zzioI+WwOGpxqTs1eBkPrcOuDYzImt5oI3WXzEuOzVJ
         bmWmizTQcFbgoHnjaxOGv2ASRRBl0VnSqgXyvY/Hr5TWOrFByP9XoP6QRFUMhqcvM9fu
         eTrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+1iTYhJMoDC/1RNTrO0ySK1dkd4mmKc0bQb97o7f5ts=;
        b=BhI5wUbYiiyha1Q8bcGGYFgJkHwSAVpiCk0uAw6dFiNYnCBbWqDd2X+KpY5iMTaHRw
         x0JxHiT/wuB5ySlN28SPs1WT3oME1w1Zi/x+8dTvU3Hg6mcD7YG7sGPNtANTbLCMs2uj
         SMU9V771jQe37OOwn20PSqzcV3YXnb8T6G8HmcflRf338Je/uMcbELG0WIWYwCpTaMbU
         wNZygq0GdwbD3JV80sJUX/UiTn36d9WLyvaBEulMiNWe1fkfyk7VQFgzACTO3EVMiltk
         PdQDyGv1ncKn+CiHMR5dGGoW0SgO/uQWu4sunTD2tJiJvj5CdyIzqo50mtah73tSNVpE
         3ZdA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=+1iTYhJMoDC/1RNTrO0ySK1dkd4mmKc0bQb97o7f5ts=;
        b=aQoR/3xzPqqOW+CxMvgjcxErYJfhYSOBpPoWiyBKL726S0PSw22lsuJfRMqKQLu1Vc
         e3/jIRo4pBMnftXc0pTXELTMsCCTH8YEbB33pL9S8puEYQmKuw+AuJAM8d9XQHD3wCFT
         qwD4s9vB0EBkNWCbC331OKRtqyuYNLIecqeBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=+1iTYhJMoDC/1RNTrO0ySK1dkd4mmKc0bQb97o7f5ts=;
        b=MHtCqf/74Naovv2K6FCPFP77EyfJSnMTeRwyqEW95uaOQL3DIVcilXzaXZED+znUzm
         qaIgA8Lv38oXcjPGNmIZ6NMwu5zNU4ysZdBfR3Dyw1k5g384IUir8I6PqYN6Pq5QDp1f
         yX6YV3O5av2RCLn1D7gUfKvGAEn2nKqWoKxR3Vju1Hukdg5MmQnQkA9hIRZmco+KFhT1
         JZq+tlO98dx/Lamipe5Kjz4OHSYnfoHFEvD4Wrbg2B2K4IK1iBDawJydMds+q/YvPqEt
         SQBk+jeuGEE9mOyHh8L1OyCMihJVdfeuwM3iws+6MWGhstSsqcsCPtid+qCu0I5EjNY5
         IBZw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2z0yqh8mqB2Z+2SNLmc8MD0zWWWGYTcBtqkmr2UPjco5PSVRET
	7YzDVe43wURM7z+OSFHT1YB0GA==
X-Google-Smtp-Source: AA6agR5nAiwoZz5d3E1Z3FMLAL0i3rh9iBJLhoBuko38Sx5OygT2bI+gpVlW0MUSE6zbYd7DO9x0Xw==
X-Received: by 2002:a05:622a:4:b0:344:94b7:a396 with SMTP id x4-20020a05622a000400b0034494b7a396mr4187152qtw.123.1662570911257;
        Wed, 07 Sep 2022 10:15:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1191:0:b0:344:662d:27b6 with SMTP id d17-20020ac81191000000b00344662d27b6ls12535499qtj.8.-pod-prod-gmail;
 Wed, 07 Sep 2022 10:15:10 -0700 (PDT)
X-Received: by 2002:ac8:5804:0:b0:344:5ba8:81e0 with SMTP id g4-20020ac85804000000b003445ba881e0mr4344576qtg.181.1662570910583;
        Wed, 07 Sep 2022 10:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662570910; cv=none;
        d=google.com; s=arc-20160816;
        b=LRuq+j8XCQRXqHZQ54JjExLpGEUag8dhEg7RCRqoYuX+vQFFuvo60l9GvA9Xo+bKoN
         wIh5UCpEyR+oWmW+pF6gpJipB9sR18XvODATrBCtnNL42rfilHfQTErBtUgt2QRuI4ww
         oyHh8NBuN8ArNoaidYsbonzy6x1xtfmwqzVB6Zdf5QwRBVgEtFQ5NIWyyV0NkofZNnMz
         KpgfHeyhLgP05CWYP4zVcppNWKFqLRgVGgc6jYPKSuQs5Qq1Oi8CbGLHq92K0IzVhv5P
         FYoaMXe0x1Z9L8BUl93lQ0kqPSOV/xEp8kuW0HQcgol3mZfGOibpvOq/EosxFT/Iaf3W
         b1PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=p3xnj6HEv5Kj0torhvmyxDfjLJf1D46r7K6XM4/VYUk=;
        b=bKjq6AwRfHW5mTghXT4TakrhxYCm6pPSwaVkALAwbbVN8lvNcgmGbHIg5NQ4yFNJDr
         /PXYk0Q0uO+4BiWrNd8riMLAGTKyIeWIG8y5VFp0Fo7f3ybDq8SGU+z6u0Iw3IZwqCNo
         RPJCappSZ5s7HvePXaP5Hhd+AvyHB7ir1N7n+aaZqo45utK+qbGVbXNuPajHLMjR8XP7
         G7XK/8//rNQASqxcp07Z043/Hayt2sfjO7yGuuWkRh/OwKcxSM9ie5pTHmL2F9mzbN7s
         1y0G9Rt866INQtRmccF5aYUVklJZAYIf9QCXrsDthmPiiU5XKHyXEwIXCXVyv8sj5/ge
         9lwg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id e30-20020ac8415e000000b0033d0264813asi9815142qtm.83.2022.09.07.10.15.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 07 Sep 2022 10:15:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 427119 invoked by uid 1000); 7 Sep 2022 13:15:09 -0400
Date: Wed, 7 Sep 2022 13:15:09 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v2 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Message-ID: <YxjRna/qihbKPEge@rowland.harvard.edu>
References: <1662519246-18397-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662519246-18397-1-git-send-email-zenghongling@kylinos.cn>
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

On Wed, Sep 07, 2022 at 10:54:06AM +0800, Hongling Zeng wrote:
> The UAS mode of Hiksemi is reported to fail to work on several platforms
> with the following error message, then after re-connecting the device will
> be offlined and not working at all.
> 
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
> 
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> change for v1
>  -Change the email real name
> 
> Change for v2
>  -Change spelling error
> 
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index cdff7dc..a6bf87a 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /*
>   * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
>   * commands in UAS mode.  Observed with the 1.28 firmware; are there others?

Acked-by: Alan Stern <stern@rowland.harvard.edu>

I didn't receive v2 of the 2/3 patch.  Did you forget to send it?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxjRna/qihbKPEge%40rowland.harvard.edu.
