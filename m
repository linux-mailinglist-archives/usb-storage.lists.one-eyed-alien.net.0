Return-Path: <usb-storage+bncBD64ZMV5YYBRBMXGY6ZAMGQE4SEQY6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 1286E8CEF42
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 16:18:28 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6ab9b667e47sf19422066d6.1
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 07:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716646707; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfG9OS/tCKn/XRCJHv64CJanhOOsR/5C5vmn4oyKT+ZYIs4Ch6RTFywqya81GCIzoz
         tr2JMPITFEk5ziYz7NesLEUN5OUAyfRDbYYCKvYV93RFqaODf55pHa5FCNE6liKxnNkg
         133HCSM+09ENPVlcADtUHsB6hJqoMf6BLdpmhZ3PPjDeMp8EC2ebFeykXkifgrYOviTQ
         yngZu9mWT8BFYWXmFR66hxhR1hILvgDEmzgUWzkQ+t0nj79Cf5OfkJeD+zc7ZxCr0s+L
         bC7JWmPmDouAepVWJHyapBXVwXmUCd2nERpS+9Ro9bJoSCmUOwOtKd3sz7TO6ahg6YvG
         kemg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3VdGwir9zkWsitCeS0ED2tXmEZQa0E54KDNUtLFsfMk=;
        fh=ybCaCtl7dW8NEhNXiSWRpF9LF6CFRtlLKAQOOPPM96k=;
        b=h224+I08RPIK0DeKs8Q0Ku/QZGwK35La7bvS8Ca8TGx0IvEDD2GWDgaQEDzYGtbv+e
         3stCqF7BlZ8P9g1H0FjiFVWT6iomHNCy9mTLCOokDvplPL5KGan2HwPoWNAfRAtQTLBq
         wAMYRS7Ud21jOeCBnsgsWRgperpzsDUaLdgQAQtyuAbD8UxZHDcWd6f8LbDWCnN4xpSu
         qOr6iAq30UUw4X3L/zDhEgjjAMxYG3Q+PJmcq7NzrI6/38g1YAwfotMHPxWRSp7dzn6g
         lnyWpXdiA5a1zGpT8uf12vU7D/99JpJ6k5BgfQCAPvnT0smBd1iGB8trWFoABhkLX8g1
         s5WA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716646707; x=1717251507; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3VdGwir9zkWsitCeS0ED2tXmEZQa0E54KDNUtLFsfMk=;
        b=Y7R7IQUYYIl1ezaCfhqTMKNazDRInNl+Dc6ia3Fghhj9bnOWgoPDdFtNaHt54g7Z6z
         kvLPrZ9+lrFYvlXYHxnqyt39BocZ5pIuKRPdbIhDjG2hvMEgGVxobddEbQmQW8CTSsqo
         zBwMnPw+A6HAk3xqveISRHh5t3eRRCZ3U+M2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716646707; x=1717251507;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3VdGwir9zkWsitCeS0ED2tXmEZQa0E54KDNUtLFsfMk=;
        b=BsP/xWF47qCm4wUI/edXlt55GFdcNBfSZqsSvDo2lejSlJaXHZu4i0RSF6U15de1Z1
         +nKvOCzcxj7b+ael3BqPr+MVkXutpGA5+9vxC0Rk1DguBZ1gh8ar1Ztv34eihV0fZAM5
         eu1hlG7WsW43Usq+aUGqPyUIVgJluAJR9h+j+obBHbBkENaoMGg0bnYSNi3snWIsKEoX
         GVZgWVePdG3IaCpvgBzO4qyP7OEgENNBwelmGtWheI9HLGKgGB2NqsywzgRA4DNqXBef
         JQAJ3xnjZas87NibS5wq14qRKWqHBwMu9VEF67jEUOeqYhiXlUT46aGDhwEJaKFMyKM4
         Nlew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXja4QXcmhVEUAluUqI9Hht1go9+BnXvDIQGRfb2XjCXepQ/4keWSLRXrU3La4nf0FOs6OfKpw/oiinCs6TArzK7ISiVAU2HmEk
X-Gm-Message-State: AOJu0YzIarZduNncidLrJ5ppjKKcn1wcfBLnAiIRYEqGAZNZnKAPehQX
	r4ezVMDQ8Jd57YFU1ROmkuVL1e825k9DR1Qego1mLky+yScj4Vtim5Go6AXGZDU=
X-Google-Smtp-Source: AGHT+IGauy+8pSWnznM8vJ+8u/BB9Oxnxb7NBiX++ee2rnV0l6LS8zhO/D6wJafUPlNycCbgKfG7AQ==
X-Received: by 2002:a05:6214:570e:b0:6a9:8226:2672 with SMTP id 6a1803df08f44-6abbbcbd329mr48175376d6.18.1716646706984;
        Sat, 25 May 2024 07:18:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:e89:b0:6a3:5cd4:7d1d with SMTP id
 6a1803df08f44-6ab9b490787ls25344066d6.2.-pod-prod-09-us; Sat, 25 May 2024
 07:18:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTKmpnruCybEVnyB6/k3xEp0z6ycVeLEYFWmJ79fR/ehhArC75I6drQOeZkJtP/dVvGBD54PihtXTVjRZLJXvxZi+cWQmv5wg0OtrGXM6S2lJul4Q=
X-Received: by 2002:a05:6214:398b:b0:6ad:68f7:fd8f with SMTP id 6a1803df08f44-6ad68f7fff5mr13728716d6.46.1716646705921;
        Sat, 25 May 2024 07:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716646705; cv=none;
        d=google.com; s=arc-20160816;
        b=D03s/4ik0xrTdFfdAFM2E4IFHIsCjQniC8JlWtsUyFwoyu5fVICPtqkLxkY/dxQzmu
         DJY90pfbljr+EzvTaDQj8PUGgrmf34h8QZZ54thY2y9OZLBkWE3MnT3h5BYrb6ZsgzCI
         CjFTVI1JG+ZmZCbVY9cI+XcC5aZwCe0vjY8iKtagotSod/CLw5yYV0ofqhaox9vqAbfN
         ZJ1EZK8RUKrm882zd/nOMbo3XM70ewaj/owvPodwqyp6ENATyJQaWWDxm/R6XW4/wIdC
         Eqs/S6VeyCTGv2UGpNs+buGHnVGHJBoIZ3bV8ShSnpX1KBlVgaVZyNx70R0r7Ioq56Na
         DTZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=dXxUM+nKGXOMiPGDgBfInY2CwLtfAdgPFXwgLtyrzKs=;
        fh=c0Oc7wSUMHapCIkD3ff/I1F1lRNZD+z7U3Hce7kK5Wc=;
        b=WZl7Y5RJzzsXkiXqHwpGEY3pJvsAxOoG0oT06nzpkDMA0nYeI/ux6TK9hqsgqJCZoR
         6S/JKer6LxOcMlwBPwPAKw/92n6nxsCXESXXbd3kWlBtr7qkxK10K7xF0ryAiAbui7g5
         ou5XdvepaqsuOl9lVATPv3zUxM+vqZaXFTEMlGdvU4cWrLcfV3hrGI1gD08SzMoUXGuR
         /7UcVBoSYJ7g/pv3LgexAlOvOCJyUPKb54rxi7yazOqrvIgBjD4fe8tKA9zoCxhinYDu
         DP8LjwzbdaD3vd1vV6TlJkEx74MuOVcTvz73cje5TQhUtBeusj1Wt5XGP6MXrNfpxIfm
         ZfSQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 6a1803df08f44-6ac070f31a1si40682666d6.272.2024.05.25.07.18.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 25 May 2024 07:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 607144 invoked by uid 1000); 25 May 2024 10:18:25 -0400
Date: Sat, 25 May 2024 10:18:25 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Shichao Lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v5] usb-storage: Check whether the media is
 initialized successfully
Message-ID: <a32fb17f-aa58-4975-9f67-3509928ca249@rowland.harvard.edu>
References: <20240525141020.2520942-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240525141020.2520942-1-shichaorai@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Sat, May 25, 2024 at 10:10:20PM +0800, Shichao Lai wrote:
> The member "uzonesize" of struct alauda_info will remain 0
> if alauda_init_media() fails, potentially causing divide errors
> in alauda_read_data() and alauda_write_lba().
> - Add a member "media_initialized" to struct alauda_info.
> - Change a condition in alauda_check_media() to ensure the
>   first initialization.
> - Add an error check for the return value of alauda_init_media().
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
> Changes since v1:

You mean changes since v4.  Regardless:

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

> - Check the initialization of alauda_check_media()
>   which is the root cause.
> 
>  drivers/usb/storage/alauda.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..40d34cc28344 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -105,6 +105,8 @@ struct alauda_info {
>  	unsigned char sense_key;
>  	unsigned long sense_asc;	/* additional sense code */
>  	unsigned long sense_ascq;	/* additional sense code qualifier */
> +
> +	bool media_initialized;
>  };
>  
>  #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
> @@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
>  	}
>  
>  	/* Check for media change */
> -	if (status[0] & 0x08) {
> +	if (status[0] & 0x08 || !info->media_initialized) {
>  		usb_stor_dbg(us, "Media change detected\n");
>  		alauda_free_maps(&MEDIA_INFO(us));
> -		alauda_init_media(us);
> -
> +		rc = alauda_init_media(us);
> +		if (rc == USB_STOR_TRANSPORT_GOOD)
> +			info->media_initialized = true;
>  		info->sense_key = UNIT_ATTENTION;
>  		info->sense_asc = 0x28;
>  		info->sense_ascq = 0x00;
> -- 
> 2.34.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a32fb17f-aa58-4975-9f67-3509928ca249%40rowland.harvard.edu.
