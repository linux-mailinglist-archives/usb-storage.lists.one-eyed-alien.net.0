Return-Path: <usb-storage+bncBD6LRVPZ6YGRB7ND3WMAMGQEIQUXVSA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1A45AEB49
	for <lists+usb-storage@lfdr.de>; Tue,  6 Sep 2022 15:58:22 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id w22-20020a05620a445600b006bb7f43d1cfsf9191153qkp.16
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 06:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662472701; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyAWs9mWcWySD2oMhek55xzAaV+3EjrZo9WSCdzsT8EKEIOxoRZ4U86Igm40Phe0Mj
         Djhf0XYbkEdpqZJ16WEQcF5RPTcFUcT3M5B7RbORyRihwyigI0/olEibGh4WanahFR9b
         T29y4LQ3RTpiP2DZlW3DDw3aMyjbPDB2NWqNeq3rgYKbKWa0JW9SzEg0J7iEJhQ/Elfy
         hJpVk+/DhAL/VLCyYZAVUnh56Ok0uK3GSqeTDlWqH09lQ3HptBn10D3PHFTtAQ/b6M3W
         4vUJnTBxTiIFqXJoXY+v1U/7W/I/M4jWRa50hdl4ifHtVTRSErC7uyGHFnbpNsNbM6d6
         gnqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S0XmFu738KLJiimoca8ECxswSRAp0IN4eYojSpDLBsE=;
        b=oh919FS2X3o+H2+vZ46xhMxlHWtC42e6r51QlerJ29Efr2k7DZcy8K8OwEfg27P6wT
         q8ME5kUtrMGn5AFCpWdVJeEI+Ys+Lm0CZBXbeL7PKAKsM7+l8hUckMiK5+srzNEhJPVR
         D94ISvL3YxqjC7kIDVZVPU4HDCbxRPuBSgokCvrqYV4PCjvxLOAAliLoj7bhtUpNDYBw
         PP6+hD9byJlAfKJ2m0h0nh2WG3FpE9HC/cQ7ycC5A5SwXrtyPKluLoN3FYP4FR+Lk5/H
         o8/cn5GwC3tqBbNc4W8+ahYZpo5BBPuDufVfsERe94U/TpeqJJVADPza4meKwg45r+2G
         Gw8g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=S0XmFu738KLJiimoca8ECxswSRAp0IN4eYojSpDLBsE=;
        b=g3xGzuq3NI4ISorw3IA5KaSk7Z76Clho1VueRlfsvCoPr+hDTdW7IHtlIbVgj6hjFc
         hofiMLksWHyX1QxfcfhydIknZS+NcZ45OxMRML4AuvNW8LQy2DCTwP933pzaAsX/Sd/T
         2a4p8AZtxGlwbCBYNdH3O8Pe5KISSxTx3/3LU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=S0XmFu738KLJiimoca8ECxswSRAp0IN4eYojSpDLBsE=;
        b=DDtZo/0JKtWwiV5V+s1xxpxvqaQMnQPRdxYYG9ftNlfQt5nA5tvQT+x0ZbQ2/6Zr7c
         PenEDy6R8PAxR2s5XZSos63SPxUM8z4atcoWBZOgXM3BGZDJ8CyTcKFNIGxbgRKQCwJb
         jbQMBrbzeA6N/UrgGiGMq6veciTtBpSNwleJd9BDPkMGrXSvgwjJNulDvaviUgpCVkMY
         p8WVE63EtqzgOJ+B/su62ZHQyD4Zd50jfH3bvE6iLhJhrgA2xRmso/q3EKYuHdSzcXQi
         HsItp3X1r/LXEa644yoxhz2lGaZz7WTRitZ178ALHN4EkTfBdz1UYVfIgi6Jyhn/okVF
         Zopw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0Byamo09a/ceDaT3TrmkcMKrNv6WmRkkKmNN6jJ3tIYGITaUx9
	9oSFhEBpTZJOzOJ6RZBTqKY29g==
X-Google-Smtp-Source: AA6agR6d8DQttLnbaIVnluwZteucqWwqWpKrm8a6DqkXczkNq0pwxQj60oipHkB8/SRnUz+MdrF2Iw==
X-Received: by 2002:a05:620a:271f:b0:6b9:3b62:c67e with SMTP id b31-20020a05620a271f00b006b93b62c67emr36014638qkp.164.1662472701686;
        Tue, 06 Sep 2022 06:58:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1459:b0:6ba:e67e:7dbd with SMTP id
 i25-20020a05620a145900b006bae67e7dbdls9452447qkl.11.-pod-prod-gmail; Tue, 06
 Sep 2022 06:58:20 -0700 (PDT)
X-Received: by 2002:a37:91c3:0:b0:6bc:5322:d49e with SMTP id t186-20020a3791c3000000b006bc5322d49emr36288783qkd.583.1662472700844;
        Tue, 06 Sep 2022 06:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662472700; cv=none;
        d=google.com; s=arc-20160816;
        b=XhilNntuisGxpwppF145jL3Tjtto4vsL4IQJUlNb7BFQ7sQVSnpm1HGKc9h/jJsQe0
         ZOAL06MyZx+Q8P1/7jYYUu/+rUhhX05XaCb4Z2HPlnBi/R2BsWXwhRsCyPQtu+C6mdFh
         B/QAlmhpITy9Z0gFkzJuF4v1clODVoUG1n6ZMsQ/Ep97IMiAzGToLuP/f6YIETLDh3L1
         Vm8V5OoLZ/LXfYDTuyLvM5PsFzSOhGRFSaa1ZVd0JfqTb+Ihi4DXiqJUeZnr22TKvmjG
         qt085yjP8xq0LYyvyEEjnoyMwUAvNOEUB4t/vS4ojbjqE+j3fhYTZimwswvlgo9V1wdO
         624A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=O6NfpKQ2tJtoDuqzNPh9/nhaoQ+ZL1dawC1UwhXPZFI=;
        b=zJmLGT8eIuYuOWHk+5OKapo18FFcNvd61VP+SgzSKq4teWwXqRDoodvF9V0w9nUxMi
         N+3ofEto5KCpk3OPlgAGx0g1hR+iwYlbEFKBprd7Kp5/heGs2cX8gZHkf47MWnkqVSpU
         DEUVfSb5FTCBQiy261uHZXYjegpteaxV/B8ojf+3Mlsc5ubEvmvFlpStXu8SMdr4jXZ8
         5BiGXr/xvY+hkcL6oGpZt1jvwNsNiVlZvSTG869BG0WN+OpTcXnecJm++pwrGM+hzhE7
         lGjFrGC1hGxoGEdpYw6/20F7Gva11p6Q385UMMYCvYawss5T+xu4APGXNEscfweku5FH
         y3WQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id f18-20020ac87f12000000b0031ef79f7059si9311291qtk.408.2022.09.06.06.58.20
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 06 Sep 2022 06:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 382878 invoked by uid 1000); 6 Sep 2022 09:58:20 -0400
Date: Tue, 6 Sep 2022 09:58:20 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: zenghongling <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Message-ID: <YxdR/LJusrGHpwSr@rowland.harvard.edu>
References: <1662434874-5116-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1662434874-5116-1-git-send-email-zenghongling@kylinos.cn>
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

On Tue, Sep 06, 2022 at 11:27:54AM +0800, zenghongling wrote:
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
> Signed-off-by: zenghongling <zenghongling@kylinos.cn>

In all three patches, the name in your Signed-off-by: line must be your 
real name (that is, the name you would use when signing a legal 
document), not an email alias.  Furthermore, the same name should appear 
in the From: field of the email message

In patches 2 and 3, the new entries are in the wrong place in the file.  
Entries are sorted by vendor and product ID.

In patch 3, how do you know that the problem is in the drive?  Does it 
fail in the same way on a Windows or Mac OSX system?

Alan Stern

> ---
>  linux-4.9.327/drivers/usb/storage/unusual_uas.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/linux-4.9.327/drivers/usb/storage/unusual_uas.h b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
> index cdff7dc..2fc6787 100644
> --- a/linux-4.9.327/drivers/usb/storage/unusual_uas.h
> +++ b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
> @@ -62,6 +62,12 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_IGNORE_UAS),
>  
> +UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /*
>   * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
>   * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YxdR/LJusrGHpwSr%40rowland.harvard.edu.
