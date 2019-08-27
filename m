Return-Path: <usb-storage+bncBDT33UHK6EMBBHPYS3VQKGQEJQ4M7WI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E0A9F6E1
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 01:26:22 +0200 (CEST)
Received: by mail-lf1-x146.google.com with SMTP id i13sf133357lfj.7
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 16:26:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566948381; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pNvCOmPyHLgI25DOhzXCSg4eG6I0usf41ScB6UFfTvAa4pqJUAY/bi2O+1Ds3f+Vu
         zz2H8mzfyLxFiXrf4d7H/f1B/zRafwhlf+J5KRvEG+5kDEJVN7nYDhESNBSMtBCj5EsM
         9PzZcxKIKXxTvPCNYephwwMpCgcRPTIGOdth6tqGCYgtkKm2ejs71B5WJmKrs1OEFUAt
         Cbi7oQkQu4iTSAvilwlfuI4G3u9fGlbHivycW4W0CL90MVGSBAqtTMEhfmiZEn5LNuL2
         ZE6s9ZD+9bbHP6cFKbMPqWgS/WW7SYvUBVQAjYb6bE/INHOnBG7wUQm0CkN9I+IYmzVX
         6hjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=W0y4bHY1PxYaJ/FCEudh6XBjSozlB37ueBZTDmyMcOk=;
        b=i9l/daATrKAaJYlffq9g9cvfzFdKfI0QwuHWhucyW/B/6U5T8IOPFFRH+z3b0/m3kp
         BOSHL/9DIkBfZz1KkbbT4mTpOKehjEWPBvfBsm6N9Vkv4ey9q05f9A8i0jmK8za+aVhZ
         BLpb8Kw0Ndm1n0QaeF1HcIy4zpFQ0B91Iphg7G27No0xYdBO8PXUPvmL3yrjhFa75PHQ
         DtOFAJ6Rpjnb/eS+lNDBMgJQQx/jUrwG2TvWWZt3/F14sSVR/QWB3q5BLDynIHcwHyOT
         mIuZQtOMxnBFHJaMVpJKl+WeN7EJu7hRYQGstR2ciHyUT+IU+brx4wLGwFWNVo/6zmbm
         aI6w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=iiFd0Hcx;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W0y4bHY1PxYaJ/FCEudh6XBjSozlB37ueBZTDmyMcOk=;
        b=RH1iWSKaGxBBEoKmMM1cTTMm9i2bPv4X7ZIN2+BXhehXAzzt83KoKVoNDy1B6btpzI
         DUmCMwy8IKmHw78aXrJI9VApHMlmPV66SDm4d3dVpiF9rdS2lD1GZwaRCgGhcf2dKM91
         14ifv6mg1l4JEN6+vI09YhlbVHIO9P6W60S9c=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W0y4bHY1PxYaJ/FCEudh6XBjSozlB37ueBZTDmyMcOk=;
        b=Tz9V4bMIfEXVoY5rl/LXzvD1WKsz7KyVJNpSWKjOG//pqV5hPQkkYWNkywQHgTPDsg
         2LSy3NI+TGE0B3j0UChoYZcbuMH5L99PcfjzjGjttsgfXTMYscKWsIMt83dYjddbPv2x
         iMVNOMPjAoELBpXktzlWsM5pPtuQ0a5WLvUnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W0y4bHY1PxYaJ/FCEudh6XBjSozlB37ueBZTDmyMcOk=;
        b=CMaIU9FENyudhnbA0xPvc3UWIAn2PSpIMr/LVtJDcFw1RZHNIXIGV3zl+Vy8r2pbuR
         V9fsdQd7zalko5PKtkurzfMgkqsKITh6V/dekVUUsVjZQzVG3aT4pjP1XtOv1MMB48DD
         RajtnpEdDk429EkE8kPucz2vX0IXayWrf32hpG4cxudqdGR6XqH/4+DMibw60G1I0iAE
         mBiKQAbRk/+xOzb0Vf6NrSEhLI/XvadttHwb33j6cxSBVBrhca9mkQvfrmVO22RybVlQ
         faGPc4WJFYcNa6qUbqpL46WXSvP/xN2L+f06UfZSkItcwvNgCDY9euEUOgbwcS1gw6jW
         DXNw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWbdbTK0vagNSn99pMBUIALlduLAx8DBFlmVLZu1lbW3YSqAgit
	WqTpdUfTFx7OHYCVBGJMm/y7Gg==
X-Google-Smtp-Source: APXvYqxFKmtOvdveY9FmCqTxXW3QIqGuLXljCJII82OFJdt9ZlaqOdNaYkdgJ+1kcKrAyCGMFKRJQQ==
X-Received: by 2002:a05:6512:15a:: with SMTP id m26mr546643lfo.71.1566948381604;
        Tue, 27 Aug 2019 16:26:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a19:7102:: with SMTP id m2ls61831lfc.15.gmail; Tue, 27 Aug
 2019 16:26:20 -0700 (PDT)
X-Received: by 2002:ac2:4c9b:: with SMTP id d27mr551689lfl.29.1566948380257;
        Tue, 27 Aug 2019 16:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566948380; cv=none;
        d=google.com; s=arc-20160816;
        b=hTFyddS8QADKJ1nr0rakFImHfEF3Aq2Pg9Qalq4DhBk8SYwAbJW9zbUC56sw/yOZU8
         wR5VJ0nMAXacPd510XWX2mAIDro8qDqxxH7gI3YG2lQMYaw+l5eyHt0v/odtVuK13v9Z
         SrM4eWzeTzMY/V+xTLftnNQZn0JcYOslng0hLVHd++PHCj9dk9aCXnUZZ0oWN3+ELTHU
         k4IMEWRu8T5ehyoyQi3/cBmOkppPxazb/vrB96qVb5m0Uf3Vz8s64n8iOdCKzISZHfDM
         ff9HeqoUkfBtRpw5bPX9Q/+Jxo+jBozAqZpk9d6LIPrznN8W4b+1Ejmuk5LB59VqJXHf
         88Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cImLM0pdPdtviN/J/1ppu79J3Jerq9AJnNqvn2jRHcA=;
        b=0rboi8EU6hifPHMvqVBARHp9zADTm6pI5WM46MBmD2x/sLpxHOMQqY0YIsOmUjV8DD
         z2BtzAQDsdBI/qRIyngmbFqWuzNSBZ42m4BSzkJDyKS/VLe53Rg87doNByHZzJeE7KHA
         HujrRiPoLIYmG/9tSBd9XvvYcMOfN2weSWuFmyzBwsIa62Y3TEy4QpqOUGn2JVDcXsTP
         3YFuScrMvXflVPpNNbq8ITDSODZ6YbSVs7TaxedJ62nvxYedTw2VYo6VkOwPNJxBtQrt
         iDd2ETrnJLGR9wU4EwfqmtKvKSEXrWBBcYcE9bmKPSnNtQwWpES+BFQF9Uwd9u5VYHC4
         Zi+A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=iiFd0Hcx;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z19sor446810ljj.47.2019.08.27.16.26.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Aug 2019 16:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a2e:89c8:: with SMTP id c8mr431829ljk.138.1566948379287;
 Tue, 27 Aug 2019 16:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190827231409.253037-1-jwerner@chromium.org>
In-Reply-To: <20190827231409.253037-1-jwerner@chromium.org>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Tue, 27 Aug 2019 16:26:07 -0700
Message-ID: <CAA6KcBAykS+VkhkcF42PhGyNu8KAEoaYPgA9-ru_HCxKrAEZzg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
To: Julius Werner <jwerner@chromium.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, 
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>
Content-Type: multipart/alternative; boundary="000000000000877fb00591219926"
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=iiFd0Hcx;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
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

--000000000000877fb00591219926
Content-Type: text/plain; charset="UTF-8"

Why not do the mode switch from userspace?  I thought we were trying to
move all the mode-switching stuff in that direction.....

Matt

On Tue, Aug 27, 2019 at 4:14 PM Julius Werner <jwerner@chromium.org> wrote:

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
>
> diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
> index 59aad38b490a6..cc901ee2bb766 100644
> --- a/drivers/usb/storage/Kconfig
> +++ b/drivers/usb/storage/Kconfig
> @@ -184,6 +184,18 @@ config USB_STORAGE_ENE_UB6250
>           To compile this driver as a module, choose M here: the
>           module will be called ums-eneub6250.
>
> +config USB_STORAGE_CROS_AOA
> +       tristate "Support for connecting to Chrome OS Recovery Android app"
> +       default n
> +       depends on USB_STORAGE
> +       help
> +         Say Y here if you want to connect an Android phone running the
> Chrome
> +         OS Recovery app to this device and mount the image served by
> that app
> +         as a virtual storage device. Unless you're building for Chrome
> OS, you
> +         probably want to say N.
> +
> +         If this driver is compiled as a module, it will be named
> ums-cros-aoa.
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
>  obj-$(CONFIG_USB_STORAGE_ALAUDA)       += ums-alauda.o
> +obj-$(CONFIG_USB_STORAGE_CROS_AOA)     += ums-cros-aoa.o
>  obj-$(CONFIG_USB_STORAGE_CYPRESS_ATACB) += ums-cypress.o
>  obj-$(CONFIG_USB_STORAGE_DATAFAB)      += ums-datafab.o
>  obj-$(CONFIG_USB_STORAGE_ENE_UB6250)   += ums-eneub6250.o
> @@ -31,6 +32,7 @@ obj-$(CONFIG_USB_STORAGE_SDDR55)      += ums-sddr55.o
>  obj-$(CONFIG_USB_STORAGE_USBAT)                += ums-usbat.o
>
>  ums-alauda-y           := alauda.o
> +ums-cros-aoa-y         := cros-aoa.o
>  ums-cypress-y          := cypress_atacb.o
>  ums-datafab-y          := datafab.o
>  ums-eneub6250-y                := ene_ub6250.o
> diff --git a/drivers/usb/storage/cros-aoa.c
> b/drivers/usb/storage/cros-aoa.c
> new file mode 100644
> index 0000000000000..269e9193209d9
> --- /dev/null
> +++ b/drivers/usb/storage/cros-aoa.c
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: GPL-2 WITH Linux-syscall-note
> +/*
> + * Driver for Chrome OS Recovery via Android Open Accessory
> + *
> + * (c) 2019 Google LLC (Julius Werner <jwerner@chromium.org>)
> + *
> + * This driver connects to an Android device via the Android Open
> Accessory
> + * protocol to use it as a USB storage back-end. It is used for system
> recovery
> + * on Chrome OS. The descriptors sent are specific to the Chrome OS
> Recovery app
> + * for Android. The driver is inert unless activated by boot firmware
> with an
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
> +
> +MODULE_DESCRIPTION("Driver for Chrome OS Recovery via Android Open
> Accessory");
> +MODULE_AUTHOR("Julius Werner <jwerner@chromium.org>");
> +MODULE_LICENSE("GPL");
> +
> +#define AOA_GET_PROTOCOL       51
> +#define AOA_SET_STRING         52
> +#define AOA_START              53
> +
> +#define AOA_STR_MANUFACTURER   0
> +#define AOA_STR_MODEL          1
> +#define AOA_STR_DESCRIPTION    2
> +#define AOA_STR_VERSION                3
> +#define AOA_STR_URI            4
> +#define AOA_STR_SERIAL         5
> +
> +#define CROS_MANUF             "Google"
> +#define CROS_MODEL             "Chrome OS Recovery"
> +#define CROS_DESC              "Chrome OS device in Recovery Mode"
> +#define CROS_VERSION           "1.0"
> +#define CROS_URI               "
> https://google.com/chromeos/recovery_android"
> +
> +static char *bind;
> +module_param(bind, charp, 0);
> +
> +static struct usb_device_id cros_aoa_ids[] = {
> +       { USB_DEVICE(0, 0) },   /* to be filled out by cros_aoa_init() */
> +       { }
> +};
> +/* No MODULE_DEVICE_TABLE(). Autoloading doesn't make sense for this
> module. */
> +
> +static int set_string(struct usb_device *udev, u16 type, const char
> *string)
> +{
> +       return usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
> AOA_SET_STRING,
> +                              USB_DIR_OUT | USB_TYPE_VENDOR |
> USB_RECIP_DEVICE,
> +                              0, type, (char *)string, strlen(string) + 1,
> +                              USB_CTRL_SET_TIMEOUT);
> +}
> +
> +static int cros_aoa_probe(struct usb_interface *intf,
> +                         const struct usb_device_id *id)
> +{
> +       int rv;
> +       u16 aoa_protocol;
> +       struct usb_device *udev = interface_to_usbdev(intf);
> +
> +       rv = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
> AOA_GET_PROTOCOL,
> +                            USB_DIR_IN | USB_TYPE_VENDOR |
> USB_RECIP_DEVICE,
> +                            0, 0, &aoa_protocol, sizeof(aoa_protocol),
> +                            USB_CTRL_GET_TIMEOUT);
> +       if (rv < 0 && rv != -EPROTO)
> +               goto fail;
> +       if (rv != sizeof(aoa_protocol) || aoa_protocol < 1) {
> +               dev_err(&intf->dev, "bound device does not support
> AOA?\n");
> +               rv = -ENODEV;
> +               goto fail;
> +       }
> +
> +       if ((rv = set_string(udev, AOA_STR_MANUFACTURER, CROS_MANUF)) < 0
> ||
> +           (rv = set_string(udev, AOA_STR_MODEL, CROS_MODEL)) < 0 ||
> +           (rv = set_string(udev, AOA_STR_DESCRIPTION, CROS_DESC)) < 0 ||
> +           (rv = set_string(udev, AOA_STR_VERSION, CROS_VERSION)) < 0 ||
> +           (rv = set_string(udev, AOA_STR_URI, CROS_URI)) < 0)
> +               goto fail;
> +
> +       rv = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), AOA_START,
> +                            USB_DIR_OUT | USB_TYPE_VENDOR |
> USB_RECIP_DEVICE,
> +                            0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
> +
> +       if (!rv) {
> +               dev_info(&intf->dev, "switching to AOA mode\n");
> +               usb_stor_cros_aoa_bind_busnum = udev->bus->busnum;
> +               usb_stor_cros_aoa_bind_route = udev->route;
> +               return 0;
> +       }
> +
> +fail:  dev_err(&intf->dev, "probe error %d\n", rv);
> +       return rv;
> +}
> +
> +static void cros_aoa_disconnect(struct usb_interface *intf)
> +{
> +       /* nothing to do -- we expect this to happen right after probe() */
> +}
> +
> +static struct usb_driver cros_aoa_stub_driver = {
> +       .name =         DRV_NAME,
> +       .probe =        cros_aoa_probe,
> +       .disconnect =   cros_aoa_disconnect,
> +       .id_table =     cros_aoa_ids,
> +};
> +
> +static int __init cros_aoa_init(void)
> +{
> +       if (!bind || sscanf(bind, "%hx:%hx", &cros_aoa_ids[0].idVendor,
> +                                            &cros_aoa_ids[0].idProduct)
> != 2)
> +               return -ENODEV;
> +       pr_info(DRV_NAME ": bound to USB device %4x:%4x\n",
> +               cros_aoa_ids[0].idVendor, cros_aoa_ids[0].idProduct);
> +       return usb_register(&cros_aoa_stub_driver);
> +}
> +
> +static void __exit cros_aoa_exit(void)
> +{
> +       usb_deregister(&cros_aoa_stub_driver);
> +}
> +
> +module_init(cros_aoa_init);
> +module_exit(cros_aoa_exit);
> diff --git a/drivers/usb/storage/initializers.c
> b/drivers/usb/storage/initializers.c
> index f8f9ce8dc7102..3056db79cd1d9 100644
> --- a/drivers/usb/storage/initializers.c
> +++ b/drivers/usb/storage/initializers.c
> @@ -92,3 +92,37 @@ int usb_stor_huawei_e220_init(struct us_data *us)
>         usb_stor_dbg(us, "Huawei mode set result is %d\n", result);
>         return 0;
>  }
> +
> +#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \
> +               defined(CONFIG_USB_STORAGE_CROS_AOA_MODULE)
> +/*
> + * Our VID/PID match grabs any Android device that was switched into
> Android
> + * Open Accessory mode. We only want to bind to the one that was switched
> by the
> + * ums-cros-aoa driver. There's no 100% way to identify the same device
> again
> + * (because it changes all descriptors), but checking that it is on the
> same bus
> + * with the same topology route should be a pretty good heuristic.
> + */
> +int usb_stor_cros_aoa_bind_busnum = -1;
> +EXPORT_SYMBOL(usb_stor_cros_aoa_bind_busnum);
> +u32 usb_stor_cros_aoa_bind_route;
> +EXPORT_SYMBOL(usb_stor_cros_aoa_bind_route);
> +
> +int usb_stor_cros_aoa_validate(struct us_data *us)
> +{
> +       if (us->pusb_dev->bus->busnum != usb_stor_cros_aoa_bind_busnum ||
> +           us->pusb_dev->route != usb_stor_cros_aoa_bind_route) {
> +               dev_info(&us->pusb_intf->dev,
> +                        "ums-cros-aoa ignoring unknown AOA device\n");
> +               return -ENODEV;
> +       }
> +
> +       /*
> +        * Only interface 0 connects to the AOA app. Android devices that
> have
> +        * ADB enabled also export an interface 1. We don't want it.
> +        */
> +       if (us->pusb_intf->cur_altsetting->desc.bInterfaceNumber != 0)
> +               return -ENODEV;
> +
> +       return 0;
> +}
> +#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */
> diff --git a/drivers/usb/storage/initializers.h
> b/drivers/usb/storage/initializers.h
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
> diff --git a/drivers/usb/storage/unusual_devs.h
> b/drivers/usb/storage/unusual_devs.h
> index ea0d27a94afe0..45fe9bbc6da18 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -2259,6 +2259,24 @@ UNUSUAL_DEV( 0x1e74, 0x4621, 0x0000, 0x0000,
>                 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>                 US_FL_BULK_IGNORE_TAG | US_FL_MAX_SECTORS_64 ),
>
> +/*
> + * Using an Android phone as USB storage back-end for Chrome OS recovery.
> See
> + * usb/storage/cros-aoa.c for details.
> + */
> +#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \
> +               defined(CONFIG_USB_STORAGE_CROS_AOA_MODULE)
> +UNUSUAL_DEV(  0x18d1, 0x2d00, 0x0000, 0xffff,
> +               "Google",
> +               "Chrome OS Recovery via AOA",
> +               USB_SC_SCSI, USB_PR_BULK, usb_stor_cros_aoa_validate,
> +               US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
> +UNUSUAL_DEV(  0x18d1, 0x2d01, 0x0000, 0xffff,
> +               "Google",
> +               "Chrome OS Recovery via AOA (with ADB)",
> +               USB_SC_SCSI, USB_PR_BULK, usb_stor_cros_aoa_validate,
> +               US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
> +#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */
> +
>  /* Supplied with some Castlewood ORB removable drives */
>  UNUSUAL_DEV(  0x2027, 0xa001, 0x0000, 0x9999,
>                 "Double-H Technology",
> --
> 2.20.1
>
>

-- 
Matthew Dharm
Former Maintainer, USB Mass Storage driver for Linux

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAA6KcBAykS%2BVkhkcF42PhGyNu8KAEoaYPgA9-ru_HCxKrAEZzg%40mail.gmail.com.

--000000000000877fb00591219926
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why not do the mode switch from userspace?=C2=A0 I thought=
 we were trying to move all the mode-switching stuff in that direction.....=
<div><br></div><div>Matt</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 4:14 PM Julius Werner=
 &lt;<a href=3D"mailto:jwerner@chromium.org">jwerner@chromium.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This patch=
 adds a new &quot;unusual&quot; USB mass storage device driver. This<br>
driver will be used for a virtual USB storage device presented by an<br>
Android phone running the &#39;Chrome OS Recovery&#39;* Android app. This a=
pp<br>
uses the Android Open Accessory (AOA) API to talk directly to a USB host<br=
>
attached to the phone.<br>
<br>
The AOA protocol requires the host to send a custom vendor command on<br>
EP0 to &quot;switch&quot; the phone into &quot;AOA mode&quot; (making it dr=
op off the bus<br>
and reenumerate with different descriptors). The ums-cros-aoa driver is<br>
just a small stub driver to send these vendor commands. It identifies<br>
the device it should operate on by VID/PID passed in through a module<br>
parameter (e.g. from the bootloader). After the phone is in AOA mode,<br>
the normal USB mass storage stack will recognize it by its special<br>
VID/PID like any other &quot;unusual dev&quot;. An initializer function wil=
l<br>
further double-check that the device is the device previously operated<br>
on by ums-cros-aoa.<br>
<br>
*NOTE: The Android app is still under development and will be released<br>
at a later date. I&#39;m submitting this patch now so that the driver name<=
br>
and module parameters can be set in stone already, because I have to<br>
bake them into bootloader code that is not field-updatable.<br>
<br>
Signed-off-by: Julius Werner &lt;<a href=3D"mailto:jwerner@chromium.org" ta=
rget=3D"_blank">jwerner@chromium.org</a>&gt;<br>
---<br>
=C2=A0drivers/usb/storage/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 12 +++=
<br>
=C2=A0drivers/usb/storage/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0=
2 +<br>
=C2=A0drivers/usb/storage/cros-aoa.c=C2=A0 =C2=A0 =C2=A0| 129 +++++++++++++=
++++++++++++++++<br>
=C2=A0drivers/usb/storage/initializers.c |=C2=A0 34 ++++++++<br>
=C2=A0drivers/usb/storage/initializers.h |=C2=A0 =C2=A04 +<br>
=C2=A0drivers/usb/storage/unusual_devs.h |=C2=A0 18 ++++<br>
=C2=A06 files changed, 199 insertions(+)<br>
=C2=A0create mode 100644 drivers/usb/storage/cros-aoa.c<br>
<br>
diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig<br>
index 59aad38b490a6..cc901ee2bb766 100644<br>
--- a/drivers/usb/storage/Kconfig<br>
+++ b/drivers/usb/storage/Kconfig<br>
@@ -184,6 +184,18 @@ config USB_STORAGE_ENE_UB6250<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 To compile this driver as a module, choo=
se M here: the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 module will be called ums-eneub6250.<br>
<br>
+config USB_STORAGE_CROS_AOA<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tristate &quot;Support for connecting to Chrome=
 OS Recovery Android app&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0default n<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on USB_STORAGE<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0help<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Say Y here if you want to connect an And=
roid phone running the Chrome<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OS Recovery app to this device and mount=
 the image served by that app<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0as a virtual storage device. Unless you&=
#39;re building for Chrome OS, you<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0probably want to say N.<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0If this driver is compiled as a module, =
it will be named ums-cros-aoa.<br>
+<br>
=C2=A0endif # USB_STORAGE<br>
<br>
=C2=A0config USB_UAS<br>
diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile<br=
>
index a67ddcbb4e249..f734741d4658b 100644<br>
--- a/drivers/usb/storage/Makefile<br>
+++ b/drivers/usb/storage/Makefile<br>
@@ -17,6 +17,7 @@ usb-storage-y +=3D usual-tables.o<br>
=C2=A0usb-storage-$(CONFIG_USB_STORAGE_DEBUG) +=3D debug.o<br>
<br>
=C2=A0obj-$(CONFIG_USB_STORAGE_ALAUDA)=C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D ums-a=
lauda.o<br>
+obj-$(CONFIG_USB_STORAGE_CROS_AOA)=C2=A0 =C2=A0 =C2=A0+=3D ums-cros-aoa.o<=
br>
=C2=A0obj-$(CONFIG_USB_STORAGE_CYPRESS_ATACB) +=3D ums-cypress.o<br>
=C2=A0obj-$(CONFIG_USB_STORAGE_DATAFAB)=C2=A0 =C2=A0 =C2=A0 +=3D ums-datafa=
b.o<br>
=C2=A0obj-$(CONFIG_USB_STORAGE_ENE_UB6250)=C2=A0 =C2=A0+=3D ums-eneub6250.o=
<br>
@@ -31,6 +32,7 @@ obj-$(CONFIG_USB_STORAGE_SDDR55)=C2=A0 =C2=A0 =C2=A0 +=3D=
 ums-sddr55.o<br>
=C2=A0obj-$(CONFIG_USB_STORAGE_USBAT)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 +=3D ums-usbat.o<br>
<br>
=C2=A0ums-alauda-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:=3D alauda.o<br=
>
+ums-cros-aoa-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:=3D cros-aoa.o<br>
=C2=A0ums-cypress-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :=3D cypress_atacb.o<=
br>
=C2=A0ums-datafab-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :=3D datafab.o<br>
=C2=A0ums-eneub6250-y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 :=3D ene_ub6250.o<br>
diff --git a/drivers/usb/storage/cros-aoa.c b/drivers/usb/storage/cros-aoa.=
c<br>
new file mode 100644<br>
index 0000000000000..269e9193209d9<br>
--- /dev/null<br>
+++ b/drivers/usb/storage/cros-aoa.c<br>
@@ -0,0 +1,129 @@<br>
+// SPDX-License-Identifier: GPL-2 WITH Linux-syscall-note<br>
+/*<br>
+ * Driver for Chrome OS Recovery via Android Open Accessory<br>
+ *<br>
+ * (c) 2019 Google LLC (Julius Werner &lt;<a href=3D"mailto:jwerner@chromi=
um.org" target=3D"_blank">jwerner@chromium.org</a>&gt;)<br>
+ *<br>
+ * This driver connects to an Android device via the Android Open Accessor=
y<br>
+ * protocol to use it as a USB storage back-end. It is used for system rec=
overy<br>
+ * on Chrome OS. The descriptors sent are specific to the Chrome OS Recove=
ry app<br>
+ * for Android. The driver is inert unless activated by boot firmware with=
 an<br>
+ * explicit kernel command line parameter.<br>
+ */<br>
+<br>
+#include &lt;linux/module.h&gt;<br>
+#include &lt;linux/printk.h&gt;<br>
+#include &lt;linux/usb.h&gt;<br>
+<br>
+#include &quot;initializers.h&quot;<br>
+<br>
+#define DRV_NAME &quot;ums-cros-aoa&quot;<br>
+<br>
+MODULE_DESCRIPTION(&quot;Driver for Chrome OS Recovery via Android Open Ac=
cessory&quot;);<br>
+MODULE_AUTHOR(&quot;Julius Werner &lt;<a href=3D"mailto:jwerner@chromium.o=
rg" target=3D"_blank">jwerner@chromium.org</a>&gt;&quot;);<br>
+MODULE_LICENSE(&quot;GPL&quot;);<br>
+<br>
+#define AOA_GET_PROTOCOL=C2=A0 =C2=A0 =C2=A0 =C2=A051<br>
+#define AOA_SET_STRING=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A052<br>
+#define AOA_START=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 53<br>
+<br>
+#define AOA_STR_MANUFACTURER=C2=A0 =C2=A00<br>
+#define AOA_STR_MODEL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br>
+#define AOA_STR_DESCRIPTION=C2=A0 =C2=A0 2<br>
+#define AOA_STR_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 3<br>
+#define AOA_STR_URI=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4<br>
+#define AOA_STR_SERIAL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
+<br>
+#define CROS_MANUF=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Go=
ogle&quot;<br>
+#define CROS_MODEL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Ch=
rome OS Recovery&quot;<br>
+#define CROS_DESC=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Ch=
rome OS device in Recovery Mode&quot;<br>
+#define CROS_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;1.0&quo=
t;<br>
+#define CROS_URI=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&qu=
ot;<a href=3D"https://google.com/chromeos/recovery_android" rel=3D"noreferr=
er" target=3D"_blank">https://google.com/chromeos/recovery_android</a>&quot=
;<br>
+<br>
+static char *bind;<br>
+module_param(bind, charp, 0);<br>
+<br>
+static struct usb_device_id cros_aoa_ids[] =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ USB_DEVICE(0, 0) },=C2=A0 =C2=A0/* to be fill=
ed out by cros_aoa_init() */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ }<br>
+};<br>
+/* No MODULE_DEVICE_TABLE(). Autoloading doesn&#39;t make sense for this m=
odule. */<br>
+<br>
+static int set_string(struct usb_device *udev, u16 type, const char *strin=
g)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return usb_control_msg(udev, usb_sndctrlpipe(ud=
ev, 0), AOA_SET_STRING,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_D=
EVICE,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0, type, (char *)string, strlen(string) + 1=
,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_CTRL_SET_TIMEOUT);<br>
+}<br>
+<br>
+static int cros_aoa_probe(struct usb_interface *intf,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0const struct usb_device_id *id)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int rv;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 aoa_protocol;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct usb_device *udev =3D interface_to_usbdev=
(intf);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rv =3D usb_control_msg(udev, usb_rcvctrlpipe(ud=
ev, 0), AOA_GET_PROTOCOL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0, 0, &amp;aoa_protocol, sizeof(aoa_protocol),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 USB_CTRL_GET_TIMEOUT);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rv &lt; 0 &amp;&amp; rv !=3D -EPROTO)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rv !=3D sizeof(aoa_protocol) || aoa_protoco=
l &lt; 1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(&amp;intf-&=
gt;dev, &quot;bound device does not support AOA?\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rv =3D -ENODEV;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((rv =3D set_string(udev, AOA_STR_MANUFACTUR=
ER, CROS_MANUF)) &lt; 0 ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(rv =3D set_string(udev, AOA_STR_=
MODEL, CROS_MODEL)) &lt; 0 ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(rv =3D set_string(udev, AOA_STR_=
DESCRIPTION, CROS_DESC)) &lt; 0 ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(rv =3D set_string(udev, AOA_STR_=
VERSION, CROS_VERSION)) &lt; 0 ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(rv =3D set_string(udev, AOA_STR_=
URI, CROS_URI)) &lt; 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rv =3D usb_control_msg(udev, usb_sndctrlpipe(ud=
ev, 0), AOA_START,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!rv) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(&amp;intf-=
&gt;dev, &quot;switching to AOA mode\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usb_stor_cros_aoa_b=
ind_busnum =3D udev-&gt;bus-&gt;busnum;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usb_stor_cros_aoa_b=
ind_route =3D udev-&gt;route;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+fail:=C2=A0 dev_err(&amp;intf-&gt;dev, &quot;probe error %d\n&quot;, rv);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return rv;<br>
+}<br>
+<br>
+static void cros_aoa_disconnect(struct usb_interface *intf)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* nothing to do -- we expect this to happen ri=
ght after probe() */<br>
+}<br>
+<br>
+static struct usb_driver cros_aoa_stub_driver =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.name =3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DRV_=
NAME,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.probe =3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 cros_aoa_=
probe,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.disconnect =3D=C2=A0 =C2=A0cros_aoa_disconnect=
,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0.id_table =3D=C2=A0 =C2=A0 =C2=A0cros_aoa_ids,<=
br>
+};<br>
+<br>
+static int __init cros_aoa_init(void)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!bind || sscanf(bind, &quot;%hx:%hx&quot;, =
&amp;cros_aoa_ids[0].idVendor,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &amp;cros_aoa_ids[0].idProduct) !=3D 2)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pr_info(DRV_NAME &quot;: bound to USB device %4=
x:%4x\n&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cros_aoa_ids[0].idV=
endor, cros_aoa_ids[0].idProduct);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return usb_register(&amp;cros_aoa_stub_driver);=
<br>
+}<br>
+<br>
+static void __exit cros_aoa_exit(void)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0usb_deregister(&amp;cros_aoa_stub_driver);<br>
+}<br>
+<br>
+module_init(cros_aoa_init);<br>
+module_exit(cros_aoa_exit);<br>
diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initi=
alizers.c<br>
index f8f9ce8dc7102..3056db79cd1d9 100644<br>
--- a/drivers/usb/storage/initializers.c<br>
+++ b/drivers/usb/storage/initializers.c<br>
@@ -92,3 +92,37 @@ int usb_stor_huawei_e220_init(struct us_data *us)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usb_stor_dbg(us, &quot;Huawei mode set result i=
s %d\n&quot;, result);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
+<br>
+#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0defined(CONFIG_USB_=
STORAGE_CROS_AOA_MODULE)<br>
+/*<br>
+ * Our VID/PID match grabs any Android device that was switched into Andro=
id<br>
+ * Open Accessory mode. We only want to bind to the one that was switched =
by the<br>
+ * ums-cros-aoa driver. There&#39;s no 100% way to identify the same devic=
e again<br>
+ * (because it changes all descriptors), but checking that it is on the sa=
me bus<br>
+ * with the same topology route should be a pretty good heuristic.<br>
+ */<br>
+int usb_stor_cros_aoa_bind_busnum =3D -1;<br>
+EXPORT_SYMBOL(usb_stor_cros_aoa_bind_busnum);<br>
+u32 usb_stor_cros_aoa_bind_route;<br>
+EXPORT_SYMBOL(usb_stor_cros_aoa_bind_route);<br>
+<br>
+int usb_stor_cros_aoa_validate(struct us_data *us)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (us-&gt;pusb_dev-&gt;bus-&gt;busnum !=3D usb=
_stor_cros_aoa_bind_busnum ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0us-&gt;pusb_dev-&gt;route !=3D us=
b_stor_cros_aoa_bind_route) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(&amp;us-&g=
t;pusb_intf-&gt;dev,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;ums-cros-aoa ignoring unknown AOA device\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Only interface 0 connects to the AOA app. An=
droid devices that have<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * ADB enabled also export an interface 1. We d=
on&#39;t want it.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (us-&gt;pusb_intf-&gt;cur_altsetting-&gt;des=
c.bInterfaceNumber !=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
+#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */<br>
diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initi=
alizers.h<br>
index 2dbf9c7d97492..35fe9ef3247d6 100644<br>
--- a/drivers/usb/storage/initializers.h<br>
+++ b/drivers/usb/storage/initializers.h<br>
@@ -37,3 +37,7 @@ int usb_stor_ucr61s2b_init(struct us_data *us);<br>
<br>
=C2=A0/* This places the HUAWEI E220 devices in multi-port mode */<br>
=C2=A0int usb_stor_huawei_e220_init(struct us_data *us);<br>
+<br>
+extern int usb_stor_cros_aoa_bind_busnum;<br>
+extern u32 usb_stor_cros_aoa_bind_route;<br>
+int usb_stor_cros_aoa_validate(struct us_data *us);<br>
diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusu=
al_devs.h<br>
index ea0d27a94afe0..45fe9bbc6da18 100644<br>
--- a/drivers/usb/storage/unusual_devs.h<br>
+++ b/drivers/usb/storage/unusual_devs.h<br>
@@ -2259,6 +2259,24 @@ UNUSUAL_DEV( 0x1e74, 0x4621, 0x0000, 0x0000,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USB_SC_DEVICE, USB_=
PR_DEVICE, NULL,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 US_FL_BULK_IGNORE_T=
AG | US_FL_MAX_SECTORS_64 ),<br>
<br>
+/*<br>
+ * Using an Android phone as USB storage back-end for Chrome OS recovery. =
See<br>
+ * usb/storage/cros-aoa.c for details.<br>
+ */<br>
+#if defined(CONFIG_USB_STORAGE_CROS_AOA) || \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0defined(CONFIG_USB_=
STORAGE_CROS_AOA_MODULE)<br>
+UNUSUAL_DEV(=C2=A0 0x18d1, 0x2d00, 0x0000, 0xffff,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Google&quot;,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Chrome OS Rec=
overy via AOA&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0USB_SC_SCSI, USB_PR=
_BULK, usb_stor_cros_aoa_validate,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0US_FL_SINGLE_LUN | =
US_FL_CAPACITY_OK),<br>
+UNUSUAL_DEV(=C2=A0 0x18d1, 0x2d01, 0x0000, 0xffff,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Google&quot;,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Chrome OS Rec=
overy via AOA (with ADB)&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0USB_SC_SCSI, USB_PR=
_BULK, usb_stor_cros_aoa_validate,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0US_FL_SINGLE_LUN | =
US_FL_CAPACITY_OK),<br>
+#endif /* defined(CONFIG_USB_STORAGE_CROS_AOA) || ... */<br>
+<br>
=C2=A0/* Supplied with some Castlewood ORB removable drives */<br>
=C2=A0UNUSUAL_DEV(=C2=A0 0x2027, 0xa001, 0x0000, 0x9999,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Double-H Tech=
nology&quot;,<br>
-- <br>
2.20.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Matthew Dharm<br>Former Maintainer, USB Mass Sto=
rage driver for Linux</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAA6KcBAykS%2BVkhkcF42PhG=
yNu8KAEoaYPgA9-ru_HCxKrAEZzg%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CAA6KcBAykS%2BVkhkcF42PhGyNu8KAEoaYPgA9-ru_HCxKrAEZzg%40mail.gmail=
.com</a>.<br />

--000000000000877fb00591219926--
