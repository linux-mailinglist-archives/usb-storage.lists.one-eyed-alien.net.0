Return-Path: <usb-storage+bncBD6LRVPZ6YGRBI7AQKFAMGQELHSWP4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 2674740B07D
	for <lists+usb-storage@lfdr.de>; Tue, 14 Sep 2021 16:22:29 +0200 (CEST)
Received: by mail-ej1-x648.google.com with SMTP id ak17-20020a170906889100b005c5d1e5e707sf5452166ejc.16
        for <lists+usb-storage@lfdr.de>; Tue, 14 Sep 2021 07:22:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631629348; cv=pass;
        d=google.com; s=arc-20160816;
        b=TMtJBluRn8jlFIvsR6HxsbO+TOi1tqI0jJUyzp/ID2G3WdZm1NmopfvSWFDVYsK8sV
         xPZ5XplESwxWi6kVkjw/VF3RlT/pNBkFnkY+czsEj1uUtvtCRYLK1EkK1fiTiZvaVplo
         sa8Z/sODwyDfAUZQZIrYPzNdxTiylpJoYDzQNQZbDbWA2B2D+Gg8RiORzorjAQwothCL
         408Qxi+4BsVjpFCEDetU/qbc46CCs6R+fKTtyHkeOsmMNEDWvC2AmE6U1fLBmsGaI32b
         PmqoYJBXa+EM97tIg2ayTUerm++79gH/z7yOuuIq1lzNy1dwYKyDXUKjlNZHNAUd3T0q
         d/xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=C9FxkVczL32ENta3zyi/AqGxt6z48GcCqLox1HEbk2I=;
        b=lphheWXITET+IVKmK1OC9EfcdGIr0aZJWH8Q84PvP5/oH20lidIbhliLEQu3CHfvZZ
         juNbckBntU7jiEcZe+RvGj077/21UFqB6oGAhoIeoSH8ojDFmyRoHlWjHSx+jNzcxice
         4trgOUlgOvuoXMJokdD/3Ykq3digJdYC8ID2k/DOtYM00eVMbPQhOvFGT3EAzpeRDp/H
         cZH6ryfSL4VQ4AMxclMBx+n4WzRPd+HW0frJi2rWqjqj/rxD9qsB/n7DrJDSLoP3LVPd
         QY111fSbc3iH5+LEfY+5s65tcY0/dm/PlLdwaxGWDYVc+vyYeBhpVlsTNwhB8Q4CGKle
         0RGA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+614e179e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+614e179e@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C9FxkVczL32ENta3zyi/AqGxt6z48GcCqLox1HEbk2I=;
        b=IS4WNs8FrqyG59/O0N6tax8I16fjUMJ6o/SiqtkoH2Cl1o9Df+AnE8vQQugOGDEeMa
         jfUiZUK3yAkV1cHGSTjJRIH3EO7SD4tPQGjnan5YbOGiYnIi17tYpbR6R9oVgXPHJo6Q
         TGfYqJdoFOKbraUJULk8bbPu2vXbgE03AKs80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C9FxkVczL32ENta3zyi/AqGxt6z48GcCqLox1HEbk2I=;
        b=LZNyyCC7VwLCbGuhon2iIGk6yYtb8DBrDQiHrlD2iDm9m8fGKY66SoinRtzmzRHUxI
         KgwD5u8wAjAHshI9Z2sKCwz8sL4l1FpnE4IVzq45kRYvtZGpwHmS9UwEm5cNjMkF9vdy
         Md/Xt8EamRbhwFL30SVuMdoFgJCC13jcpU8OlSD6H/q1Q9pQLSd/HNtaiCsHoOXW7wD4
         sCIhwhankA/ad1R9JTZ4rRXW3AFodFPuaQQsZBqcAQcbRAFKVS3TznGo25XDchKabFvu
         ZWXXM7xEK9Nx5kVRoAdUIgS8uj/Rh+FYfuVt1ERlYGcDXtIDP145B7bGaOcMvgpwH0z+
         tHDQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530xb3LFORqTvz3olHkneiIB8+UP5SH+6QlplHHhW7D1zySAWJOJ
	yvBhi2syN63tMPUFs7PQEJLCzg==
X-Google-Smtp-Source: ABdhPJzoamsafhcl0+lOVAPXKVS2j0Z4QEVITnKQfsd5C461sC5nZNDr6ADTnVBITBTUgvkbam6DHA==
X-Received: by 2002:a17:906:b807:: with SMTP id dv7mr16084328ejb.543.1631629347956;
        Tue, 14 Sep 2021 07:22:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:254d:: with SMTP id l13ls6752667edb.3.gmail; Tue,
 14 Sep 2021 07:22:26 -0700 (PDT)
X-Received: by 2002:a05:6402:270a:: with SMTP id y10mr19230609edd.252.1631629346053;
        Tue, 14 Sep 2021 07:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631629346; cv=none;
        d=google.com; s=arc-20160816;
        b=DwsooD6QiF40s3WUV0weMbj0J8Dw8GOR/G6+tpYxjWS7JrlC9TsFKSyQkar86kg4hz
         piGnK+Ev2ug4KGq30na7NuvkHDkjrUoM3TuH71gtkQAZXEudndfVbTQ9qvK3uKbgj5Lo
         YYsoCssPim/fv9ytqmZ551/SoPSG5VigSGo+h8iUEGAA05epl4Yas49T542b/HWY5eDM
         gB8TH4KiCIdDysdh0ZoVsKwWpZf6uIKA+qBdJWX5aiwhCpQ577qLr+AKRtzbXH5mdXiV
         cOTx3ydy76sKg4onY6LBsrTls+7HgpwKObBjhh7aW3T9vAYwBhi1wbdcHvUKT5aUCpXN
         o49w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=gvr2QS/n3A5xA5JvQiZuesVyE5ZcXNEBIxrlMiGgDqM=;
        b=yX5lJZ1Z8gel0ZCnW0CdcgXVogCnAL6j49QgG/VF+sz01GCuM6o/xAaE52VxorXYK1
         Z1VAI/ZEPUqHeWpFpp8HtEq7vYisaQMEv53+RAdVoHi5hhDMiLJg8JI6qIK/0SO6tzrE
         Ha0Zin74Sp0v67Uaz9MFlznffkMNAIpDej4UZQFnEK8qVPRlFic8bbkdK24MoIJXkFrJ
         PNGmEfQsGoSzGKvJxriU4adgniNZw2LA0FLN0YYD2PlqUfKONCSp9IJ+gIyB74LiqWMq
         ary0Scd/0ge7CnPjC0V7ouCVZgpmCM2znGQfKJi1fE/fw4sBD2YlIso/b/3DxBy6JD+w
         SMnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+614e179e@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+614e179e@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id zp8si7479581ejb.481.2021.09.14.07.22.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 14 Sep 2021 07:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+614e179e@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 156518 invoked by uid 1000); 14 Sep 2021 10:22:24 -0400
Date: Tue, 14 Sep 2021 10:22:24 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ondrej Zary <linux@zary.sk>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Add quirk for ScanLogic
 SL11R-IDE older than 2.6c
Message-ID: <20210914142224.GB155245@rowland.harvard.edu>
References: <20210913210106.12717-1-linux@zary.sk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210913210106.12717-1-linux@zary.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+614e179e@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+614e179e@netrider.rowland.org
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

On Mon, Sep 13, 2021 at 11:01:06PM +0200, Ondrej Zary wrote:
> ScanLogic SL11R-IDE with firmware older than 2.6c (the latest one) has
> broken tag handling, preventing the device from working at all:
> usb 1-1: new full-speed USB device number 2 using uhci_hcd
> usb 1-1: New USB device found, idVendor=04ce, idProduct=0002, bcdDevice= 2.60
> usb 1-1: New USB device strings: Mfr=1, Product=1, SerialNumber=0
> usb 1-1: Product: USB Device
> usb 1-1: Manufacturer: USB Device
> usb-storage 1-1:1.0: USB Mass Storage device detected
> scsi host2: usb-storage 1-1:1.0
> usbcore: registered new interface driver usb-storage
> usb 1-1: reset full-speed USB device number 2 using uhci_hcd
> usb 1-1: reset full-speed USB device number 2 using uhci_hcd
> usb 1-1: reset full-speed USB device number 2 using uhci_hcd
> usb 1-1: reset full-speed USB device number 2 using uhci_hcd
> 
> Add US_FL_BULK_IGNORE_TAG to fix it. Also update my e-mail address.
> 
> 2.6c is the only firmware that claims Linux compatibility.
> The firmware can be upgraded using ezotgdbg utility:
> https://github.com/asciilifeform/ezotgdbg
> 
> Signed-off-by: Ondrej Zary <linux@zary.sk>
> ---

Acked-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/unusual_devs.h | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index efa972be2ee3..c6b3fcf90180 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -416,9 +416,16 @@ UNUSUAL_DEV(  0x04cb, 0x0100, 0x0000, 0x2210,
>  		USB_SC_UFI, USB_PR_DEVICE, NULL, US_FL_FIX_INQUIRY | US_FL_SINGLE_LUN),
>  
>  /*
> - * Reported by Ondrej Zary <linux@rainbow-software.org>
> + * Reported by Ondrej Zary <linux@zary.sk>
>   * The device reports one sector more and breaks when that sector is accessed
> + * Firmwares older than 2.6c (the latest one and the only that claims Linux
> + * support) have also broken tag handling
>   */
> +UNUSUAL_DEV(  0x04ce, 0x0002, 0x0000, 0x026b,
> +		"ScanLogic",
> +		"SL11R-IDE",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_FIX_CAPACITY | US_FL_BULK_IGNORE_TAG),
>  UNUSUAL_DEV(  0x04ce, 0x0002, 0x026c, 0x026c,
>  		"ScanLogic",
>  		"SL11R-IDE",

Too bad the manufacturer didn't understand that 0x026c is not a valid 
bcdDevice value...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210914142224.GB155245%40rowland.harvard.edu.
