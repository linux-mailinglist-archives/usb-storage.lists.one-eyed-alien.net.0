Return-Path: <usb-storage+bncBDKM3GOS4YHBBRNV7OLQMGQENSAMM3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id C40155991C5
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 02:35:18 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id oh2-20020a056214438200b0047bd798af75sf1879306qvb.6
        for <lists+usb-storage@lfdr.de>; Thu, 18 Aug 2022 17:35:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660869317; cv=pass;
        d=google.com; s=arc-20160816;
        b=YFUTsB6aC/POJY0pguOi+7i/t/OvRVAyToWI7fY6yDlorhPeiyM+mQoJ/FbGbtLPhv
         6MCYfFgImHYl1opxW5NIlRy2V29gnxYMWIj2epouBa2UECp0RVH3rm3v+rWoWuKX7+wG
         PH+cof4kj5vrC8CISuJfzDdgJTd3oKD96pbykGAPZkK9zZPeh5ktK8mFTi9ozbKNpmKh
         v5FJbv7tf1mMsn2CQtMPveFX5dGLpn0P5jFz+0NlSY05e5ty8LeNcNu8/RuzgJpJvH7Z
         zcvSHxKuFje/nmqu1G3z2EYRw1PFoKVU4YIqQw8l70gw1VLRYje/vZPJdMA1jLNizIPm
         8yIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dn9WghOKdmxYUsyg7Pys/t2IaOxrTSSnd+2KMfWd6+w=;
        b=wajl5LQHcU0rqD2zRKqLiU5kYilrwyZbgljYHJnOmdknvcppxDBc703L1RrKh++EK2
         +IcqTfZyg4a3mET1vOrNddAWBXFkfIpT7FmsLVRjQ5CqbaNmoLGJV4WDeJIBodyWFomM
         V8gEge1Hf1631jQcqsMykB55Gmx/u3l/pB1a+hb76GcftH1IT9i94JooU2icOt6hS1da
         luzF7y/otBeCtFxhhfJtHotZDGL3WprKJbXatFthTsByyHnGChmN5Qh+sUq2EyLRxhhY
         Cbmnb7F4FOVAYy74sT2vVH+VoWPrU8K77ArwBsqpnQXOq8kWBOt9p5tI4gi2tjhsbCsH
         QUMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=qa8QQJ7l;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=Dn9WghOKdmxYUsyg7Pys/t2IaOxrTSSnd+2KMfWd6+w=;
        b=RK9HhpkEb14leaQHhXzFVA9Z5jAaqL7xeY8Hrw+TekFQgory+NgvBBNOAWyECmv6Oe
         t48OGUt6r640jrc88q4DNHlGTQBw2gnksNV8v7/Z/J7jy+1wwoQjy6Q6aChCkCvUvnco
         Kc+Eh7XkBGN8KPI2c28txqHinOockLWPUcSjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=Dn9WghOKdmxYUsyg7Pys/t2IaOxrTSSnd+2KMfWd6+w=;
        b=NWchJo/KTqlulgwHOZQhLlw11PykI8o3EI14a2wlffk5whP/hRHpDx4GNp5kfra4YE
         rjd/2l+ywH411GgQUYjuWb21sJ7xuIj81mElS5+LQbnONgn5oXzPV0qA0OL+7cryK4nX
         5SinTJunH6BAlO7eG19x1WrZuSvrpesCAumWpq0icvKsroQrKhFNQHQmM+KGM8cH4xjJ
         Xxh79/8OJCmu9Gl85tEuKt7Ac7+ZSv40fDtbb1KZaJKN91x11f6XgIal1Fqks2vkY0Yi
         KVrkvJJ1vkIUvkrpPfnopBxqU965jy9H8I5KzBFkIhqK96Ww/hioYtTKeNuhrJiPYc8B
         OfVw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2ACWRChS1WH+0tBOky42EYTthTxbAcJLUGD2MZHRAw3uV/6krU
	FDxV64iYhRtJVhBAdqBL8xaExw==
X-Google-Smtp-Source: AA6agR4PjTlZoxwz81KpLIHGafOYl9XS8Vs9r03TbgpdxidD4aWMqOfyP3hCTDJjNZ+ktY4haUIVaw==
X-Received: by 2002:a0c:9c48:0:b0:473:5e9e:741 with SMTP id w8-20020a0c9c48000000b004735e9e0741mr4606926qve.63.1660869317619;
        Thu, 18 Aug 2022 17:35:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:230a:b0:342:f1c7:49fa with SMTP id
 ck10-20020a05622a230a00b00342f1c749fals2080314qtb.6.-pod-prod-gmail; Thu, 18
 Aug 2022 17:35:17 -0700 (PDT)
X-Received: by 2002:ac8:5dca:0:b0:343:7769:5894 with SMTP id e10-20020ac85dca000000b0034377695894mr4651883qtx.45.1660869317077;
        Thu, 18 Aug 2022 17:35:17 -0700 (PDT)
Received: by 2002:a05:620a:459e:b0:6a6:b240:ff45 with SMTP id af79cd13be357-6bbd40ac17fms85a;
        Thu, 18 Aug 2022 15:09:03 -0700 (PDT)
X-Received: by 2002:a05:6000:15c5:b0:220:727a:24bf with SMTP id y5-20020a05600015c500b00220727a24bfmr2705836wry.621.1660860542291;
        Thu, 18 Aug 2022 15:09:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660860542; cv=none;
        d=google.com; s=arc-20160816;
        b=e9iaZE/2E0z6UuBqepgKD5HZRf/Xht7NHDzHqls8Bl8ACluMOPwMzS65Ml0kBwdTq7
         VJV2lYOKrgjq/92Q4dhe4oe35CJRNZUF9M4JlgTepHqMRMX8zZhAZcfinn+rf+KlpDL4
         Kg+Zx+IzkvpFsN8kJbhVy0cUH1gvu81ajsbRRvHFMt41LW1frUtzSy3aOPnpGMk8CQ4m
         fE7llQy7c8Lf+vkC52ljTqbLHugTaliazN87eqvhYZ6A6DREd9U3gS58qZVSwJ7sqBVB
         3Rx23v5Pf2qD1Ydtx7jz5T25Za27/y88hiWwfHwfSK1PFouoP1HWYje74K33IULyqfuJ
         TzIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JRqfSZmMX4IVEXqOq3ajGp/7+Z/BpRfwxvChMYPB/Ck=;
        b=PWHhAO7KFMZ6yyGEZDUUkSuFLu7hweNnRpk7VAuKFX4uEUg2wR9BJfKOfPkLESqIgq
         KQhgKAHa+8cs9KUp+r9fmrk4s70vUIylc39A9mr+3jCBYkdmM0+ZjfSqtarSPfRykcqa
         xst72vuOwFooWuEasgnkkNAvegxzy090w+TRn9MHzPDRnRK2LjKKIGZphE8ph6omA8kI
         UG8Wfqkkg+4lFtvllRaWXGjHQCqmPR+VO2ZDcbz2FL5U7+SaSRiPfuqUILnE0FSZ8mJ0
         9lgxB20eueoyYY6FGl9BC60BQtYlTWCXyCKYmGUVSQUqiyKZqf0DiOfM8XKxSdZdkPgD
         02RQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=qa8QQJ7l;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by mx.google.com with ESMTPS id 9-20020a056000156900b00224f77df3eesi1512390wrz.492.2022.08.18.15.09.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 15:09:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 66DC64A8;
	Fri, 19 Aug 2022 00:09:01 +0200 (CEST)
Date: Fri, 19 Aug 2022 01:08:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
Message-ID: <Yv64eoZlywNXQ/OB@pendragon.ideasonboard.com>
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
X-Original-Sender: laurent.pinchart@ideasonboard.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@ideasonboard.com header.s=mail header.b=qa8QQJ7l;       spf=pass
 (google.com: domain of laurent.pinchart@ideasonboard.com designates
 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi Wolfram,

Thank you for the patch.

On Thu, Aug 18, 2022 at 11:01:15PM +0200, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
>  drivers/usb/atm/usbatm.c               | 2 +-
>  drivers/usb/core/devio.c               | 2 +-
>  drivers/usb/gadget/function/f_fs.c     | 2 +-
>  drivers/usb/gadget/function/f_uvc.c    | 2 +-
>  drivers/usb/gadget/function/u_ether.c  | 8 ++++----
>  drivers/usb/gadget/function/uvc_v4l2.c | 6 +++---
>  drivers/usb/gadget/udc/omap_udc.c      | 2 +-
>  drivers/usb/misc/usb251xb.c            | 6 +++---
>  drivers/usb/storage/onetouch.c         | 2 +-
>  drivers/usb/typec/tcpm/fusb302.c       | 2 +-
>  drivers/usb/usbip/stub_main.c          | 2 +-
>  11 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/usb/atm/usbatm.c b/drivers/usb/atm/usbatm.c
> index 362217189ef3..1cdb8758ae01 100644
> --- a/drivers/usb/atm/usbatm.c
> +++ b/drivers/usb/atm/usbatm.c
> @@ -1026,7 +1026,7 @@ int usbatm_usb_probe(struct usb_interface *intf, const struct usb_device_id *id,
>  	/* public fields */
>  
>  	instance->driver = driver;
> -	strlcpy(instance->driver_name, driver->driver_name,
> +	strscpy(instance->driver_name, driver->driver_name,
>  		sizeof(instance->driver_name));
>  
>  	instance->usb_dev = usb_dev;
> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> index b5b85bf80329..837f3e57f580 100644
> --- a/drivers/usb/core/devio.c
> +++ b/drivers/usb/core/devio.c
> @@ -1434,7 +1434,7 @@ static int proc_getdriver(struct usb_dev_state *ps, void __user *arg)
>  	if (!intf || !intf->dev.driver)
>  		ret = -ENODATA;
>  	else {
> -		strlcpy(gd.driver, intf->dev.driver->name,
> +		strscpy(gd.driver, intf->dev.driver->name,
>  				sizeof(gd.driver));
>  		ret = (copy_to_user(arg, &gd, sizeof(gd)) ? -EFAULT : 0);
>  	}
> diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> index e0fa4b186ec6..98dc2291e9a1 100644
> --- a/drivers/usb/gadget/function/f_fs.c
> +++ b/drivers/usb/gadget/function/f_fs.c
> @@ -3700,7 +3700,7 @@ int ffs_name_dev(struct ffs_dev *dev, const char *name)
>  
>  	existing = _ffs_do_find_dev(name);
>  	if (!existing)
> -		strlcpy(dev->name, name, ARRAY_SIZE(dev->name));
> +		strscpy(dev->name, name, ARRAY_SIZE(dev->name));
>  	else if (existing != dev)
>  		ret = -EBUSY;
>  
> diff --git a/drivers/usb/gadget/function/f_uvc.c b/drivers/usb/gadget/function/f_uvc.c
> index 71669e0e4d00..f4f6cf75930b 100644
> --- a/drivers/usb/gadget/function/f_uvc.c
> +++ b/drivers/usb/gadget/function/f_uvc.c
> @@ -430,7 +430,7 @@ uvc_register_video(struct uvc_device *uvc)
>  	uvc->vdev.vfl_dir = VFL_DIR_TX;
>  	uvc->vdev.lock = &uvc->video.mutex;
>  	uvc->vdev.device_caps = V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_STREAMING;
> -	strlcpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
> +	strscpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
>  
>  	video_set_drvdata(&uvc->vdev, uvc);
>  
> diff --git a/drivers/usb/gadget/function/u_ether.c b/drivers/usb/gadget/function/u_ether.c
> index 7887def05dc2..e06022873df1 100644
> --- a/drivers/usb/gadget/function/u_ether.c
> +++ b/drivers/usb/gadget/function/u_ether.c
> @@ -144,10 +144,10 @@ static void eth_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *p)
>  {
>  	struct eth_dev *dev = netdev_priv(net);
>  
> -	strlcpy(p->driver, "g_ether", sizeof(p->driver));
> -	strlcpy(p->version, UETH__VERSION, sizeof(p->version));
> -	strlcpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
> -	strlcpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
> +	strscpy(p->driver, "g_ether", sizeof(p->driver));
> +	strscpy(p->version, UETH__VERSION, sizeof(p->version));
> +	strscpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
> +	strscpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
>  }
>  
>  /* REVISIT can also support:
> diff --git a/drivers/usb/gadget/function/uvc_v4l2.c b/drivers/usb/gadget/function/uvc_v4l2.c
> index fd8f73bb726d..511f106f9843 100644
> --- a/drivers/usb/gadget/function/uvc_v4l2.c
> +++ b/drivers/usb/gadget/function/uvc_v4l2.c
> @@ -67,9 +67,9 @@ uvc_v4l2_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
>  	struct uvc_device *uvc = video_get_drvdata(vdev);
>  	struct usb_composite_dev *cdev = uvc->func.config->cdev;
>  
> -	strlcpy(cap->driver, "g_uvc", sizeof(cap->driver));
> -	strlcpy(cap->card, cdev->gadget->name, sizeof(cap->card));
> -	strlcpy(cap->bus_info, dev_name(&cdev->gadget->dev),
> +	strscpy(cap->driver, "g_uvc", sizeof(cap->driver));
> +	strscpy(cap->card, cdev->gadget->name, sizeof(cap->card));
> +	strscpy(cap->bus_info, dev_name(&cdev->gadget->dev),
>  		sizeof(cap->bus_info));
>  	return 0;
>  }
> diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
> index 61cabb9de6ae..b0567c63d754 100644
> --- a/drivers/usb/gadget/udc/omap_udc.c
> +++ b/drivers/usb/gadget/udc/omap_udc.c
> @@ -2558,7 +2558,7 @@ omap_ep_setup(char *name, u8 addr, u8 type,
>  
>  	/* set up driver data structures */
>  	BUG_ON(strlen(name) >= sizeof ep->name);
> -	strlcpy(ep->name, name, sizeof ep->name);
> +	strscpy(ep->name, name, sizeof(ep->name));
>  	INIT_LIST_HEAD(&ep->queue);
>  	INIT_LIST_HEAD(&ep->iso);
>  	ep->bEndpointAddress = addr;
> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
> index 04c4e3fed094..87035ac09834 100644
> --- a/drivers/usb/misc/usb251xb.c
> +++ b/drivers/usb/misc/usb251xb.c
> @@ -547,7 +547,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  		hub->boost_up = USB251XB_DEF_BOOST_UP;
>  
>  	cproperty_char = of_get_property(np, "manufacturer", NULL);
> -	strlcpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
> +	strscpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
>  		sizeof(str));
>  	hub->manufacturer_len = strlen(str) & 0xFF;
>  	memset(hub->manufacturer, 0, USB251XB_STRING_BUFSIZE);
> @@ -557,7 +557,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  			      USB251XB_STRING_BUFSIZE);
>  
>  	cproperty_char = of_get_property(np, "product", NULL);
> -	strlcpy(str, cproperty_char ? : data->product_str, sizeof(str));
> +	strscpy(str, cproperty_char ? : data->product_str, sizeof(str));
>  	hub->product_len = strlen(str) & 0xFF;
>  	memset(hub->product, 0, USB251XB_STRING_BUFSIZE);
>  	len = min_t(size_t, USB251XB_STRING_BUFSIZE / 2, strlen(str));
> @@ -566,7 +566,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  			      USB251XB_STRING_BUFSIZE);
>  
>  	cproperty_char = of_get_property(np, "serial", NULL);
> -	strlcpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
> +	strscpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
>  		sizeof(str));
>  	hub->serial_len = strlen(str) & 0xFF;
>  	memset(hub->serial, 0, USB251XB_STRING_BUFSIZE);
> diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
> index 1db2eefeea22..01f3c2779ccf 100644
> --- a/drivers/usb/storage/onetouch.c
> +++ b/drivers/usb/storage/onetouch.c
> @@ -201,7 +201,7 @@ static int onetouch_connect_input(struct us_data *ss)
>  	onetouch->dev = input_dev;
>  
>  	if (udev->manufacturer)
> -		strlcpy(onetouch->name, udev->manufacturer,
> +		strscpy(onetouch->name, udev->manufacturer,
>  			sizeof(onetouch->name));
>  	if (udev->product) {
>  		if (udev->manufacturer)
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index 96c55eaf3f80..ab89c014606e 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -151,7 +151,7 @@ static void _fusb302_log(struct fusb302_chip *chip, const char *fmt,
>  
>  	if (fusb302_log_full(chip)) {
>  		chip->logbuffer_head = max(chip->logbuffer_head - 1, 0);
> -		strlcpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
> +		strscpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
>  	}
>  
>  	if (chip->logbuffer_head < 0 ||
> diff --git a/drivers/usb/usbip/stub_main.c b/drivers/usb/usbip/stub_main.c
> index 77a5b3f8736a..e8c3131a8543 100644
> --- a/drivers/usb/usbip/stub_main.c
> +++ b/drivers/usb/usbip/stub_main.c
> @@ -100,7 +100,7 @@ static int add_match_busid(char *busid)
>  	for (i = 0; i < MAX_BUSID; i++) {
>  		spin_lock(&busid_table[i].busid_lock);
>  		if (!busid_table[i].name[0]) {
> -			strlcpy(busid_table[i].name, busid, BUSID_SIZE);
> +			strscpy(busid_table[i].name, busid, BUSID_SIZE);
>  			if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
>  			    (busid_table[i].status != STUB_BUSID_REMOV))
>  				busid_table[i].status = STUB_BUSID_ADDED;

-- 
Regards,

Laurent Pinchart

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yv64eoZlywNXQ/OB%40pendragon.ideasonboard.com.
