Return-Path: <usb-storage+bncBD6LRVPZ6YGRBFGSTLVQKGQEBADZXEI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id B05A3A0717
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 18:17:25 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id e2sf185965qtm.19
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 09:17:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567009044; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvvYkWEj+0mlOwD0ZKt743jDqbJRztFVETwcIbSAap2SCk8FK2Qb9vWvN1S9fhoHAP
         JDwm0OP5MO1cD6rMddolok53a8qAkavaOxpQMwbwqXsVgz4CoOOHlFzHTcZ4JOR+ok35
         uIlpiTr0P4Ad790Jbg5MpvxGZUNl3jl2mluvJC5ZJfp8ShN6kLBGGobbQWN9/6ogRQrV
         RCkZ5rZL5+/FZH/uD3WMThmTRAA+MEZcetNGv+nYPWl2oNqnMsLv3KQquQ24akHBt+uT
         D0AmsGEsvbsH5jeYph4AEq+Kuw+2A3z1sXeD14QrpNoji6IKaomUizsFoPIn9jyeUFhb
         kaOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=KTPbmg9DuqzsOe6AihnguLx3hNLVZRXjpMk1Lp7ML5A=;
        b=k9IWsE7IFdpnx6Z7T2X2ArJBWbmv3al7V85Jo12PeGdRtvk6FwIT22YDSgT+t94wWz
         EZK5Z+PkW7RX6jpMFqyuS2tiyCSp87XBfzqgCMC3fJHPjEX2lXdV+hoviO4GKawB6JFu
         pfYCJ7ZxQrxJfqWJkSff6gMgr5AaHdNV65AQZhpFyHa4A4n7IBVUzTWlHVi0vd+bUfnf
         vyv4Z6hPO/EFIMq8ngN2BTZ+WrYCir12xX+73sQjMTUlmkZc79V03Uy1nr3W4i8vkUy0
         tqIwV0arCOIO7klpjlFEM0u0EKs2cwQ7oivIu6AhMNO/y/ygWIAfiHuNWJfNQcH35Mat
         Og9w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTPbmg9DuqzsOe6AihnguLx3hNLVZRXjpMk1Lp7ML5A=;
        b=is5R/PiFZ+NpbUGUVgBysXnEVMMMMcWZtVd6vgjc5QpYXOZli5dIDLsLIPw4V9qYgU
         ZCHOcKBifM6Es8yvLEGHSK0V0NYAcaaPfnN5UAcwxDrcfkGYJy+284wfJLMow1tZsHWU
         heBewm7wHcN3TFuag0Loj+SuRPPlRZV4b4L0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTPbmg9DuqzsOe6AihnguLx3hNLVZRXjpMk1Lp7ML5A=;
        b=bFGnjSokUdtatXdw33QKF46W48SINc0FHr0OOYZVnpmjps0+34DSJdCtebX8HqhRVU
         AZsOPHfjKkxLbM+RwcLPwDfdjx9TPcFFej8QA/VOPMX786Wv584q7i6kKvjEEVwxy3o1
         6pFSEsqjK6ZKRyY2DZyFnKaB5ptC2XtBQ51nW4ZbsRfE2rQTi9TGsbjU0KTyxIBgxg1v
         VvzpqyH2OLpNjqrpXlw1d7wHHjKRV5TTLM5fXvUs5w83nJ8I7aVWDi7IWgF6cstwVpg2
         Qcfrp5d99gmW6U6cFdgi1ZBZG84UzA6ps5mEltcKwygu55MCmAisU7taqj3WmDo1IPfB
         M1Fw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWRP7cn4n/bOtKzuGo0Be8+xUYj+1hO5tE85A5cRFRhTadDhqmJ
	+8blTQppnSb2dERXBtLVcETLaw==
X-Google-Smtp-Source: APXvYqxoaGfDq5oFTgjlNeVOcEJiPQkqhdyyR+Y00DQHbnNhsAxN0XerYF79Xf/glcz+gsx9wKmMyg==
X-Received: by 2002:ac8:2e0b:: with SMTP id r11mr5004670qta.8.1567009044379;
        Wed, 28 Aug 2019 09:17:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:220e:: with SMTP id n14ls923012qtc.6.gmail; Wed, 28 Aug
 2019 09:17:23 -0700 (PDT)
X-Received: by 2002:ac8:4803:: with SMTP id g3mr5130997qtq.226.1567009043794;
        Wed, 28 Aug 2019 09:17:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567009043; cv=none;
        d=google.com; s=arc-20160816;
        b=0gYBESg1D6yRJCHQyEf9ORkhhMhHWI6Kv+Jcw0WYASMpqah8pgNjCG6K402wn5QlhQ
         Hzrh0GkmQ7pQB34G8vsmXRTaCR9yl8WlqJ/m2nlHXR7gMmuRFBX8s94zWMFkS1SINoos
         0GItVp5LQKpPcyHrX3waXyUWtOmgF5ufMJKohdndswpyF+i0rTaLZ0KPIZspjgl4OF7k
         pxG5iKUA7/2KHrj4QX5duzCnIj32363Ln7ajofI3Jd7GG7vuf87h81g+lmyDOj5qttvK
         l0whQKsxQwSDKhOdNc2dGeKiwYqfnJBbQnf5wt7PJh/oq5QjSoo3uq+AK8OD4Pi8Yaij
         v3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=KTPbmg9DuqzsOe6AihnguLx3hNLVZRXjpMk1Lp7ML5A=;
        b=0HtnWTsuSPlwkHWXXI+2/dlvL9z3xi8y06+G8xMLWKq5aIYdu9nrf45C+9AryJj4Rp
         RLg8aXHDjypvWg4mHXwIRZ6SVS+4DmV3MCEN/47j2Onz+vvzIMbGAqVbMSEMvpt3abap
         +M+/lgylgqt4agnqYbn2zmv2rH9idftLrk5TagG39P5CTBo4uWl42keMC4OkhRQgxjFH
         o10YZ2Ng181rLESs/Y6MdVxz5AiAfyVFgzRdYWJ5M8PC1C06eo8AeCqE9i5rJPBxTiG0
         3K5H9CVG5UbIG9Ny+rH4LNau4ztaprV5U9MVe7zEFH7ztPdDCn7KxwXaK2E2Jdb+djmU
         1BuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id f24si1813311qkm.220.2019.08.28.09.17.23
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 28 Aug 2019 09:17:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2547 invoked by uid 2102); 28 Aug 2019 12:17:22 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 28 Aug 2019 12:17:22 -0400
Date: Wed, 28 Aug 2019 12:17:22 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Julius Werner <jwerner@chromium.org>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Kernel development list <linux-kernel@vger.kernel.org>, 
    USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
In-Reply-To: <20190827231409.253037-1-jwerner@chromium.org>
Message-ID: <Pine.LNX.4.44L0.1908281155100.1302-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
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

On Tue, 27 Aug 2019, Julius Werner wrote:

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

> +static struct usb_device_id cros_aoa_ids[] = {
> +	{ USB_DEVICE(0, 0) },	/* to be filled out by cros_aoa_init() */
> +	{ }
> +};
> +/* No MODULE_DEVICE_TABLE(). Autoloading doesn't make sense for this module. */

Aren't you going to get in trouble if there are two attached devices
that need to be put into AOA mode?

> +static int set_string(struct usb_device *udev, u16 type, const char *string)
> +{
> +	return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), AOA_SET_STRING,
> +			       USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
> +			       0, type, (char *)string, strlen(string) + 1,
> +			       USB_CTRL_SET_TIMEOUT);

Although this is technically invalid, it's probably okay...

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

but this most certainly is not okay.  Buffers passed to
usb_control_msg() (or used with URBs in general) should be allocated
with kmalloc.

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

Bad programming style (assignment within "if" expression).

> +
> +	rv = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), AOA_START,
> +			     USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
> +			     0, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
> +
> +	if (!rv) {
> +		dev_info(&intf->dev, "switching to AOA mode\n");
> +		usb_stor_cros_aoa_bind_busnum = udev->bus->busnum;
> +		usb_stor_cros_aoa_bind_route = udev->route;

Bear in mind that udev->route is supposed to be reliable only if the 
device is running at SuperSpeed.

> +		return 0;

Why return 0?  You're going to unbind immediately anyway.

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

As Greg pointed out, there are better ways to do this.

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
> +
> +int usb_stor_cros_aoa_validate(struct us_data *us)
> +{
> +	if (us->pusb_dev->bus->busnum != usb_stor_cros_aoa_bind_busnum ||
> +	    us->pusb_dev->route != usb_stor_cros_aoa_bind_route) {
> +		dev_info(&us->pusb_intf->dev,
> +			 "ums-cros-aoa ignoring unknown AOA device\n");
> +		return -ENODEV;
> +	}

What happens if two devices switch modes concurrently?  You have room 
to store only one topology route.

Besides, what's wrong with binding to devices that weren't switched 
into AOA mode?  Would that just provoke a bunch of unnecessary error 
messages?

> +
> +	/*
> +	 * Only interface 0 connects to the AOA app. Android devices that have
> +	 * ADB enabled also export an interface 1. We don't want it.
> +	 */
> +	if (us->pusb_intf->cur_altsetting->desc.bInterfaceNumber != 0)
> +		return -ENODEV;

Do you really need this test?  What would go wrong if you don't do it?

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

Subdrivers (the ums_* modules) are supposed to have their own 
individual unusual_devs files.  They don't use the main file.

> > Why not do the mode switch from userspace?  I thought we were trying to move all the mode-switching stuff in that direction.....
> 
> I need to tie in to the main USB mass storage driver in a way that I
> think would make it too complicated to move the mode switching part to
> userspace. See the part I'm adding to initializers.c... that one has
> to be in the kernel since it operates on the device after the mode
> switch when it is claimed by the normal USB storage driver.

I'm not convinced that you really need to do this.

>  But the
> mode switch part has to communicate information to it to make sure it
> picks up the right device (just relying on the normal USB device
> matching isn't enough in this case, because all Android devices in AOA
> mode identify themselves with that well-known VID/PID... I don't know
> if there's any other kernel driver using this protocol today, but
> there may be at some point and then it becomes important to make sure
> you really grab the device you meant to grab). Some of that
> information (the 'route' field) isn't even directly available from
> userspace (I could use the device name string instead and that would
> roughly come out to the same thing, but seems less clean to me).

The full, reliable routing information (not just the data in
udev->route) is indeed available to userspace.  See the definition of
the USBDEVFS_CONNINFO_EX usbfs ioctl.

> So I could either do the mode switch in userspace and add a big custom
> sysfs interface to the usb-storage driver to allow userspace to
> configure all this, or I can add a small kernel shim driver like in
> this patch. Considering how little code the shim driver actually needs
> I expect it would come out to roughly the same amount of kernel code
> in both cases, and I feel like this version is much simpler to follow
> and fits cleaner in the existing "unusual device" driver
> infrastructure.

IMO the userspace approach would be better, unless you can provide a
really compelling argument for why it won't suffice.

Alan Stern

