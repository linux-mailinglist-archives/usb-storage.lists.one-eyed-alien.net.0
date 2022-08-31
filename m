Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVWGXSMAMGQEGV2QTBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x646.google.com (mail-ej1-x646.google.com [IPv6:2a00:1450:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C935A79AA
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 11:01:11 +0200 (CEST)
Received: by mail-ej1-x646.google.com with SMTP id he38-20020a1709073da600b0073d98728570sf5048222ejc.11
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 02:01:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661936471; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cbk6mRC4i1S2sw2LFVht3O1XtcQpqZbP9F2Y/YZEc0bA/jmEGaBYW9rE4zrPqff8cn
         dMDrFk/rkUBmuyiXn7DzhHoKb0lg/i2nzgtsUxJ/S0eOpCskOlz8IJ22X8jgixfxFE0W
         iz/2IUt0TsiNt0WMbpdM8Zn0cesuAAHMhy+v3aD+xLQikq0YR06qEOuJm0rcquJB/PAd
         9QwL7aroDE5dL6S40NARbSyIEHY9Futk22nvtAGh9g1IIs+1fGPkVWYm4176GGYNptE8
         4nBXrLWBm46ufdE4LBusmMmUdVljcCsQJyF6ug96k2kTOuf9HH+1QnFtQf3ZFYJqRmQo
         eMTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PpZIbJjHywGKYXZuGS3dYMKMKZwuO5xxaegU2WLMwMw=;
        b=fE84WU9jPi7EzgT8KNM450KFZPOfgs3phHApzSGMDCME69z1RDVtLacXQ++Otehhzv
         ozCYJU7EI3WPH7UF29XCK/1HdAV4sZc4DvjkwdayeCmR7OOJUr0Wjo7vuJJMUVJvHwAW
         XjvxSHSGB+MD9yuJElwid3iCnLEL2qgRlMMF+Nbh1xCbE/JeJf5Jxf+nX4tNGQ1t8t+P
         bChakTBAO99rq4rdukKZzRIwOSnhaX3aCuFt8qQKLPnfv6vjkW8Yef39pPeSWYzCWdT9
         tbEJQAbW0hGRt9ju8r2j8pSPK93ZP6jdTyoW2MS+5ww0H+001hMm0knFo6MZoElPNwil
         sZHw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WbbS90H4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=PpZIbJjHywGKYXZuGS3dYMKMKZwuO5xxaegU2WLMwMw=;
        b=kFBpwDUq3MfdUvAeuhwTHH0dGh1oQZA6oPBCbAKb0fCLfnjYwBRbNH6hzrz7hj17CU
         ix3WtIEezOuc2jHVFgpD10wIcTwJNRSBkSxIpdwPx1GXZLYzNLx/n++olP78UhDxyeFt
         MXyMk2tWe0Cz79+VFDVvfrZLXrv23xyDZxb7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=PpZIbJjHywGKYXZuGS3dYMKMKZwuO5xxaegU2WLMwMw=;
        b=DLYUaYnFviGeVwsFflT1FroZ7v/+9Lt8MOX25adAWBgGwiWMyZSd4Uf6FK6A4sf8hX
         FMUA/aXUCfqWfXlgdd5ZSfWJBt8BAVglde1gRxWhfReSCOAwDXy3ml2kmhDi6cO5kb0T
         uykzgF/lMtMzIFmaFyrgzSi3taQhyo4Y1iYKofVCTp2iHSvNl2O1qXR85t/HDfRhw0YY
         fTg3bHfWmKYMZVueSo+RXauB5zIeVqN6hIg0noMj9xh4xD9PJ0YDXjrA3Ymm38NTQZyU
         fQdg4xwjuR/tKErD2A7paGDGnUPUf3XV4FAROSdZOVY3xlLXP9DWiTnGBNuMSsORjmAQ
         6iOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3gValiRj+4aXaW+tNeIJFxUS0p4sHa0k5pHxsihkLmEW0yrXgC
	m3yl8i4a7EdNV5AIFNAH1Wtljw==
X-Google-Smtp-Source: AA6agR4T2T+JwUW+VrL0a7q6yR3R0sqoEJSwfDJvzlkWZNA6idST6cEdrK4FJv9hq0Xp8tJyWS4ptQ==
X-Received: by 2002:a17:906:847c:b0:73f:d7cf:bf2d with SMTP id hx28-20020a170906847c00b0073fd7cfbf2dmr15963857ejc.327.1661936470705;
        Wed, 31 Aug 2022 02:01:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:907:11c9:b0:73d:704f:9649 with SMTP id
 va9-20020a17090711c900b0073d704f9649ls2367780ejb.5.-pod-prod-gmail; Wed, 31
 Aug 2022 02:01:09 -0700 (PDT)
X-Received: by 2002:a17:907:3e12:b0:738:fd2f:df80 with SMTP id hp18-20020a1709073e1200b00738fd2fdf80mr20401058ejc.29.1661936469432;
        Wed, 31 Aug 2022 02:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661936469; cv=none;
        d=google.com; s=arc-20160816;
        b=FyxzIyis5ouJnRxPlk6+e8CHzSSnZUznYOgyLMIMBAY1rsH24FxYfdpXJb6uivBFZx
         gpsuXgQmCGTMEn7OnTM44M+qjGUPNO1F45e6fCxH4yhTyyL0hZMHuLYYTCH+aeObNALf
         7iQGtQXbYb44BTwrmC7zW/djEv23hl2ZplouQjdgRvLcRBwVSuITDox+OFH4TulgR+nK
         kp08sbkyhmY/RxPOkWe8trHfO8SbPqJU3zhOJ0pgrLf8HNqpAH58Uw0AcGUCCNrEg+Ge
         e5F9Y6Y4X0meMecHpEGwtMvNAuoMplq/JkaQyJNALeCFDxdC6HREfguQ07ZJrAnBsXyJ
         hW3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2CXtG7QAaBZyDte8N2PnOBDH2wbFAPCI9i6QfcF0fhA=;
        b=b8SQU4WvFDvpKJPVPheK7sC9alIogXUOUiogTVMTqPrkGHIdLR0JorfPz4JAveHAor
         LBRgvWZXBYd3dZzbGwd80LhbKS9ISMaCSpe2NAFR+NUeJSi+UTDY4iFyEGn7XYbddSFo
         l4ktXDzfeeOa43X7akxv3mAMrTkx59wsOE1KLmI17xxSqE61OgMLiAtEU2wuovewj9as
         u544yz0sYoeqE2DaWEErF49xJVsgovSVVFNW6WsONG/p43Pqt9JmDjrk7XqlisxLttdI
         jBzCRAofrXiY7DaMMnrkm3H2OZ/LTOaAZ+d1i/L4rN1RgSwtHOTVrUzbndzoRd/dkGxR
         hZdA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WbbS90H4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id v13-20020a50954d000000b00446a3185341si10153262eda.80.2022.08.31.02.01.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1B249B81F15;
	Wed, 31 Aug 2022 09:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 664CBC433D6;
	Wed, 31 Aug 2022 09:01:07 +0000 (UTC)
Date: Wed, 31 Aug 2022 11:01:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zenghongling <zhongling0719@126.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v3] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Message-ID: <Yw8jUPFfYjwP+9jb@kroah.com>
References: <1661935657-24710-1-git-send-email-zhongling0719@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1661935657-24710-1-git-send-email-zhongling0719@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=WbbS90H4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Aug 31, 2022 at 04:47:37PM +0800, zenghongling wrote:
> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
> several platforms with the following error message:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
>                endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
>                1b000000 05038000
> 
> And when running iozone will disconnect from the USB controller, then after
> re-connecting the device will be offlined and not working at all.
> 
> Signed-off-by: zenghongling <zhongling0719@126.com>
> ---
>  drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index cdff7dc..ddcdf1a 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
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
> @@ -142,6 +148,12 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",
> @@ -184,6 +196,12 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw8jUPFfYjwP%2B9jb%40kroah.com.
