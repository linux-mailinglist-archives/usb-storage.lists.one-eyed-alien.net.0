Return-Path: <usb-storage+bncBCUJ7YGL3QFBBE7YTDVQKGQE5O2WSFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CBB9FD1F
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 10:32:21 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id q9sf1217316pgv.17
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 01:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566981140; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0ehbU0UYAjb35/I3O7u2Vgi5wrfczBb3HIFr0GW8pjyrVMSCViK60QMB9wTBvtgW9
         rh0hnYKyf37/vUJMoWEDHVaN7yYBuafMac6e/N+yBfiSaumKbLtLYUz9gBN+WvpFNKCU
         WpAUwO+GzyV3IbdbrcSHIRjfmLg9q7qXi7KLaP1EcM3VFBtFf+0gGKjLdEMXMx4Xp+Uk
         V5NIcl+cS52kglIIiLqks9o5/fNZ8ZrM19nWy27rtJ4amkOEBnPBeQyEoF7e222J3Ce7
         6jpB72J830tV8xR7vfZtH6WVcbzIeQxjW9CFmeNwQTTgy6cz8LwMeP33gJnmoBJVCRLl
         p0og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xcuhkEBm1525JiF/8pEjm9AGS9CyciXREDXYKbOugQI=;
        b=xK98xnrfW2DUEpb0p9ndkxm2R+Z7YKPMgcMFQpw/GOUMhZIjvwKGzfunFkvsvMFgws
         nUoxnKn/0pc/xPPzVitKlBC8mHjLN6rt2DKK53JQLTmNxmDxncreCJJlrbjXuNT9VX7X
         VK2wqICjMs3LWzLPSjYQuX+M9pvZe/rC0EUs27El/AY9k/MGdoyRWqHf2o3NzPL2a1s8
         w2JaefKLpd4xPz8+SWsprbv7AMyXYuzLWZpp9EweBgY6YXKzYxYkn4Nj7+Z+YTq2tQvC
         DPGGRtq/AZp0dPuuOTbcoYLSvrpiOmjuqYAtEqt+NwF6IV0S7xQpOF29GFT4ZjSxWGMg
         ik4Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RfA1sAD+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcuhkEBm1525JiF/8pEjm9AGS9CyciXREDXYKbOugQI=;
        b=Dpa4up17wN6vOYseMLlWCehDGywvYE139eXKpx0VM+PgzWfkPOssvu2lUYr5RRxABQ
         taFaG4WT4aK2BgJc7NkVZfLqnZg/9tFuBjSG8euTBcDObLlTYomPQZjU1zWwn/pFTOXU
         2xnQYZRpoLH3Sf9TRiclkNtWxb4BrdCC0/uZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xcuhkEBm1525JiF/8pEjm9AGS9CyciXREDXYKbOugQI=;
        b=Yj7Uc2/XkxmgQavjGPiB63bQjLeAC4IvtKJQr49E32pUCf9p1tdS+zdpnUyp/rsJBi
         423em4nmxlEf5VSDyD/oXYZbeEUhlKKJprvKp6lBTmfmGe/5UFfCWQCLTdgiM+/B6QOd
         C30te5s2Y507dzEIwbihtScF+nVAe+CscwDlXzErzgDfcmjTgRu/zbKOThplm/oA1tcy
         RzPB5RGKK5VrNAqqB183Dqe3yo3zqyMOHW1669wlNLX9zqnWu0Pd+cvrE7nTUthoVSUf
         pn7rqXeDNjm1KpgRKKsIHM1d/cGFm7JkbheBywEas482BJNvdh5Uzww4KKXvltnZ1UtE
         jp5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVx6kWdaC/co+J0WVmPjQdb6bkTOa1spBdYlGAelj9hc5DXiJuN
	/dHYwJEQW4VPrag11pkxft5EZQ==
X-Google-Smtp-Source: APXvYqyjol45rt8UVUE20K+erdtjrzMZvnXpu7qybpJr97GQqKokIxCHu5lMWaf/Il0ywyNqLxPlcg==
X-Received: by 2002:a17:902:bb0d:: with SMTP id l13mr3118424pls.176.1566981140136;
        Wed, 28 Aug 2019 01:32:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:3886:: with SMTP id f128ls715217pfa.8.gmail; Wed, 28 Aug
 2019 01:32:19 -0700 (PDT)
X-Received: by 2002:a65:4b89:: with SMTP id t9mr2397236pgq.55.1566981139403;
        Wed, 28 Aug 2019 01:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566981139; cv=none;
        d=google.com; s=arc-20160816;
        b=Pr6MyN4ZSwgO66LR55dWzMm71CrSzU6Fu1CjHW4EUfEI7D5FFh8Lu5tIJP554mwt/B
         fj5K/95yNmwBthU3P6vThpZBsCXZD3HOXOcniXcWNK2mVV3P/lAu1XtlhezKJVosphII
         XOxEbkgY6wMxvhMtzGYKodAYJpRtVNdfWQXXSq6UBPd01e+36IY8HOh0nUNDT1KrPYW2
         utt6uLNH3oPDufX7ng9mm7QjJbTvmzVsC4ZInjOxWRuQt1qWyKbpAByWmb+0yzMSdoGR
         7CPBHsQmwRvi7f93l96TY4bq8PgkBTYMnK8RAUirP3nLECK8gcafmHNhleHnrp+loHKw
         5Qeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2/dPv5ZtkfDMd7ecFwwzYSWFagoUSNTiKs1ONxZaizQ=;
        b=ltGRTyjSiz8AfnNipvJev/pFFA3SozLypZZ/9i4/LeMUJDRLI+dyMyUmqd42ji0ylj
         ra7t0JngKmZ+E5X/8ChNbR/s1C/nil9inmd+gDqkczvTXH0ASaiJpHYWBRhD9QPzrKnb
         d378EV61JBp6n8hRvK4XrfRSwlq5ho2N+JZKXo8mbFOOw7W1X1Ppacf8nlF+RQ77i80B
         0X3VbpnJTgBG7shhGuYE3QcqKUokA8KO58OSKVk0avOacrNAar40ZKOEGET8qygIhNQe
         ShMcua6JJ6drDDc9zZhEtvDCf9rrKRrIVaZgbgBgeO52H1/0pnPxt9tEtHlRD3zsL6vo
         idKQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RfA1sAD+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id o33si1418024pld.266.2019.08.28.01.32.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 01:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 919B72342A;
	Wed, 28 Aug 2019 08:32:18 +0000 (UTC)
Date: Wed, 28 Aug 2019 10:32:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julius Werner <jwerner@chromium.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
Message-ID: <20190828083216.GB28851@kroah.com>
References: <20190827231409.253037-1-jwerner@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190827231409.253037-1-jwerner@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RfA1sAD+;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Aug 27, 2019 at 04:14:09PM -0700, Julius Werner wrote:
> This patch adds a new "unusual" USB mass storage device driver. This
> driver will be used for a virtual USB storage device presented by an
> Android phone running the 'Chrome OS Recovery'* Android app. This app
> uses the Android Open Accessory (AOA) API to talk directly to a USB host
> attached to the phone.
> 
> The AOA protocol requires the host to send a custom vendor command on
> EP0 to "switch" the phone into "AOA mode" (making it drop off the bus
> and reenumerate with different descriptors). The ums-cros-aoa driver is
> just a small stub driver to send these vendor commands. It identifies
> the device it should operate on by VID/PID passed in through a module
> parameter (e.g. from the bootloader). After the phone is in AOA mode,
> the normal USB mass storage stack will recognize it by its special
> VID/PID like any other "unusual dev". An initializer function will
> further double-check that the device is the device previously operated
> on by ums-cros-aoa.
> 
> *NOTE: The Android app is still under development and will be released
> at a later date. I'm submitting this patch now so that the driver name
> and module parameters can be set in stone already, because I have to
> bake them into bootloader code that is not field-updatable.
> 
> Signed-off-by: Julius Werner <jwerner@chromium.org>
> ---
>  drivers/usb/storage/Kconfig        |  12 +++
>  drivers/usb/storage/Makefile       |   2 +
>  drivers/usb/storage/cros-aoa.c     | 129 +++++++++++++++++++++++++++++
>  drivers/usb/storage/initializers.c |  34 ++++++++
>  drivers/usb/storage/initializers.h |   4 +
>  drivers/usb/storage/unusual_devs.h |  18 ++++
>  6 files changed, 199 insertions(+)
>  create mode 100644 drivers/usb/storage/cros-aoa.c

Pure syntax issues noted below, nothing on the content, I'll wait until
after my coffee for that...

> 
> diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
> index 59aad38b490a6..cc901ee2bb766 100644
> --- a/drivers/usb/storage/Kconfig
> +++ b/drivers/usb/storage/Kconfig
> @@ -184,6 +184,18 @@ config USB_STORAGE_ENE_UB6250
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called ums-eneub6250.
>  
> +config USB_STORAGE_CROS_AOA
> +	tristate "Support for connecting to Chrome OS Recovery Android app"
> +	default n

"default n" is the default, no need to list it again.

> +	depends on USB_STORAGE
> +	help
> +	  Say Y here if you want to connect an Android phone running the Chrome
> +	  OS Recovery app to this device and mount the image served by that app
> +	  as a virtual storage device. Unless you're building for Chrome OS, you
> +	  probably want to say N.
> +
> +	  If this driver is compiled as a module, it will be named ums-cros-aoa.
> +
>  endif # USB_STORAGE
>  
>  config USB_UAS
> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index a67ddcbb4e249..f734741d4658b 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -17,6 +17,7 @@ usb-storage-y += usual-tables.o
>  usb-storage-$(CONFIG_USB_STORAGE_DEBUG) += debug.o
>  
>  obj-$(CONFIG_USB_STORAGE_ALAUDA)	+= ums-alauda.o
> +obj-$(CONFIG_USB_STORAGE_CROS_AOA)	+= ums-cros-aoa.o
>  obj-$(CONFIG_USB_STORAGE_CYPRESS_ATACB) += ums-cypress.o
>  obj-$(CONFIG_USB_STORAGE_DATAFAB)	+= ums-datafab.o
>  obj-$(CONFIG_USB_STORAGE_ENE_UB6250)	+= ums-eneub6250.o
> @@ -31,6 +32,7 @@ obj-$(CONFIG_USB_STORAGE_SDDR55)	+= ums-sddr55.o
>  obj-$(CONFIG_USB_STORAGE_USBAT)		+= ums-usbat.o
>  
>  ums-alauda-y		:= alauda.o
> +ums-cros-aoa-y		:= cros-aoa.o
>  ums-cypress-y		:= cypress_atacb.o
>  ums-datafab-y		:= datafab.o
>  ums-eneub6250-y		:= ene_ub6250.o
> diff --git a/drivers/usb/storage/cros-aoa.c b/drivers/usb/storage/cros-aoa.c
> new file mode 100644
> index 0000000000000..269e9193209d9
> --- /dev/null
> +++ b/drivers/usb/storage/cros-aoa.c
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: GPL-2 WITH Linux-syscall-note

.c files do not have that license, sorry (I have had _LONG_ discussions
with lawyers about that over the past few weeks...)

It should just be GPL-2



> +/*
> + * Driver for Chrome OS Recovery via Android Open Accessory
> + *
> + * (c) 2019 Google LLC (Julius Werner <jwerner@chromium.org>)
> + *
> + * This driver connects to an Android device via the Android Open Accessory
> + * protocol to use it as a USB storage back-end. It is used for system recovery
> + * on Chrome OS. The descriptors sent are specific to the Chrome OS Recovery app
> + * for Android. The driver is inert unless activated by boot firmware with an
> + * explicit kernel command line parameter.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/printk.h>
> +#include <linux/usb.h>
> +
> +#include "initializers.h"
> +
> +#define DRV_NAME "ums-cros-aoa"

KBUILD_MODNAME?


> +
> +MODULE_DESCRIPTION("Driver for Chrome OS Recovery via Android Open Accessory");
> +MODULE_AUTHOR("Julius Werner <jwerner@chromium.org>");
> +MODULE_LICENSE("GPL");

This usually goes at the end of the file, but ok...


> +
> +#define AOA_GET_PROTOCOL	51
> +#define AOA_SET_STRING		52
> +#define AOA_START		53
> +
> +#define AOA_STR_MANUFACTURER	0
> +#define AOA_STR_MODEL		1
> +#define AOA_STR_DESCRIPTION	2
> +#define AOA_STR_VERSION		3
> +#define AOA_STR_URI		4
> +#define AOA_STR_SERIAL		5
> +
> +#define CROS_MANUF		"Google"
> +#define CROS_MODEL		"Chrome OS Recovery"
> +#define CROS_DESC		"Chrome OS device in Recovery Mode"
> +#define CROS_VERSION		"1.0"
> +#define CROS_URI		"https://google.com/chromeos/recovery_android"
> +
> +static char *bind;
> +module_param(bind, charp, 0);

No documentation for a module parameter?

And what is this, the 1990's?  Please do not add these unless you have
no other option as they only work on a driver-wide basis, not a
per-device basis.

> +
> +static struct usb_device_id cros_aoa_ids[] = {
> +	{ USB_DEVICE(0, 0) },	/* to be filled out by cros_aoa_init() */

as-is, this driver is doing nothing, so it will never be auto-loaded :(

Please provide the real ids here for your device to start with.  And if
you insist on adding new ids from userspace, then use the functionality
the driver core provides for you, do not invent a new one.

> +	{ }
> +};
> +/* No MODULE_DEVICE_TABLE(). Autoloading doesn't make sense for this module. */

I disagree, you need to bind to something...

> +
> +static int set_string(struct usb_device *udev, u16 type, const char *string)
> +{
> +	return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), AOA_SET_STRING,
> +			       USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
> +			       0, type, (char *)string, strlen(string) + 1,
> +			       USB_CTRL_SET_TIMEOUT);
> +}
> +
> +static int cros_aoa_probe(struct usb_interface *intf,
> +			  const struct usb_device_id *id)
> +{
> +	int rv;
> +	u16 aoa_protocol;
> +	struct usb_device *udev = interface_to_usbdev(intf);
> +
> +	rv = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), AOA_GET_PROTOCOL,
> +			     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
> +			     0, 0, &aoa_protocol, sizeof(aoa_protocol),
> +			     USB_CTRL_GET_TIMEOUT);
> +	if (rv < 0 && rv != -EPROTO)
> +		goto fail;
> +	if (rv != sizeof(aoa_protocol) || aoa_protocol < 1) {
> +		dev_err(&intf->dev, "bound device does not support AOA?\n");
> +		rv = -ENODEV;
> +		goto fail;
> +	}
> +
> +	if ((rv = set_string(udev, AOA_STR_MANUFACTURER, CROS_MANUF)) < 0 ||
> +	    (rv = set_string(udev, AOA_STR_MODEL, CROS_MODEL)) < 0 ||
> +	    (rv = set_string(udev, AOA_STR_DESCRIPTION, CROS_DESC)) < 0 ||
> +	    (rv = set_string(udev, AOA_STR_VERSION, CROS_VERSION)) < 0 ||
> +	    (rv = set_string(udev, AOA_STR_URI, CROS_URI)) < 0)
> +		goto fail;

Ok, I was going to stop and not talk about content, but what?  You are
sending urls to a device???

> +
> +	rv = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), AOA_START,
> +			     USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
> +			     0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
> +
> +	if (!rv) {
> +		dev_info(&intf->dev, "switching to AOA mode\n");

Do not be noisy for a normal functioning driver.

> +		usb_stor_cros_aoa_bind_busnum = udev->bus->busnum;
> +		usb_stor_cros_aoa_bind_route = udev->route;
> +		return 0;
> +	}
> +
> +fail:	dev_err(&intf->dev, "probe error %d\n", rv);
> +	return rv;
> +}
> +
> +static void cros_aoa_disconnect(struct usb_interface *intf)
> +{
> +	/* nothing to do -- we expect this to happen right after probe() */
> +}
> +
> +static struct usb_driver cros_aoa_stub_driver = {
> +	.name =		DRV_NAME,
> +	.probe =	cros_aoa_probe,
> +	.disconnect =	cros_aoa_disconnect,
> +	.id_table =	cros_aoa_ids,
> +};
> +
> +static int __init cros_aoa_init(void)
> +{
> +	if (!bind || sscanf(bind, "%hx:%hx", &cros_aoa_ids[0].idVendor,
> +					     &cros_aoa_ids[0].idProduct) != 2)
> +		return -ENODEV;
> +	pr_info(DRV_NAME ": bound to USB device %4x:%4x\n",
> +		cros_aoa_ids[0].idVendor, cros_aoa_ids[0].idProduct);
> +	return usb_register(&cros_aoa_stub_driver);
> +}
> +
> +static void __exit cros_aoa_exit(void)
> +{
> +	usb_deregister(&cros_aoa_stub_driver);
> +}
> +
> +module_init(cros_aoa_init);
> +module_exit(cros_aoa_exit);
> diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initializers.c
> index f8f9ce8dc7102..3056db79cd1d9 100644
> --- a/drivers/usb/storage/initializers.c
> +++ b/drivers/usb/storage/initializers.c
> @@ -92,3 +92,37 @@ int usb_stor_huawei_e220_init(struct us_data *us)
>  	usb_stor_dbg(us, "Huawei mode set result is %d\n", result);
>  	return 0;
>  }
> +
> +#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \
> +		defined(CONFIG_USB_STORAGE_CROS_AOA_MODULE)

We have a macro to make that easier, please use it.

> +/*
> + * Our VID/PID match grabs any Android device that was switched into Android
> + * Open Accessory mode. We only want to bind to the one that was switched by the
> + * ums-cros-aoa driver. There's no 100% way to identify the same device again
> + * (because it changes all descriptors), but checking that it is on the same bus
> + * with the same topology route should be a pretty good heuristic.
> + */
> +int usb_stor_cros_aoa_bind_busnum = -1;
> +EXPORT_SYMBOL(usb_stor_cros_aoa_bind_busnum);
> +u32 usb_stor_cros_aoa_bind_route;
> +EXPORT_SYMBOL(usb_stor_cros_aoa_bind_route);

Ick.

And _GPL at the very least...


> +
> +int usb_stor_cros_aoa_validate(struct us_data *us)
> +{
> +	if (us->pusb_dev->bus->busnum != usb_stor_cros_aoa_bind_busnum ||
> +	    us->pusb_dev->route != usb_stor_cros_aoa_bind_route) {
> +		dev_info(&us->pusb_intf->dev,
> +			 "ums-cros-aoa ignoring unknown AOA device\n");
> +		return -ENODEV;
> +	}
> +
> +	/*
> +	 * Only interface 0 connects to the AOA app. Android devices that have
> +	 * ADB enabled also export an interface 1. We don't want it.
> +	 */
> +	if (us->pusb_intf->cur_altsetting->desc.bInterfaceNumber != 0)
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */
> diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initializers.h
> index 2dbf9c7d97492..35fe9ef3247d6 100644
> --- a/drivers/usb/storage/initializers.h
> +++ b/drivers/usb/storage/initializers.h
> @@ -37,3 +37,7 @@ int usb_stor_ucr61s2b_init(struct us_data *us);
>  
>  /* This places the HUAWEI E220 devices in multi-port mode */
>  int usb_stor_huawei_e220_init(struct us_data *us);
> +
> +extern int usb_stor_cros_aoa_bind_busnum;
> +extern u32 usb_stor_cros_aoa_bind_route;
> +int usb_stor_cros_aoa_validate(struct us_data *us);
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index ea0d27a94afe0..45fe9bbc6da18 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -2259,6 +2259,24 @@ UNUSUAL_DEV( 0x1e74, 0x4621, 0x0000, 0x0000,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_BULK_IGNORE_TAG | US_FL_MAX_SECTORS_64 ),
>  
> +/*
> + * Using an Android phone as USB storage back-end for Chrome OS recovery. See
> + * usb/storage/cros-aoa.c for details.
> + */
> +#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \
> +		defined(CONFIG_USB_STORAGE_CROS_AOA_MODULE)
> +UNUSUAL_DEV(  0x18d1, 0x2d00, 0x0000, 0xffff,
> +		"Google",
> +		"Chrome OS Recovery via AOA",
> +		USB_SC_SCSI, USB_PR_BULK, usb_stor_cros_aoa_validate,
> +		US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
> +UNUSUAL_DEV(  0x18d1, 0x2d01, 0x0000, 0xffff,
> +		"Google",
> +		"Chrome OS Recovery via AOA (with ADB)",
> +		USB_SC_SCSI, USB_PR_BULK, usb_stor_cros_aoa_validate,
> +		US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
> +#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */

Hey look, device ids!  Use them above please...

I'm with Matt, this should be trivial to do in userspace, why is this
needed in the kernel?  Did you try it in userspace already?  What does
the code for that look like?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828083216.GB28851%40kroah.com.
